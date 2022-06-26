//
//  SingleChoiceMessageTableViewCell.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 20/06/22.
//

import UIKit

class SingleChoiceMessageTableViewCell: UITableViewCell, ActivityMessageCellConfigurable {
    
    typealias M = SingleChoiceMessage
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageOptionsStack: UIStackView!
    @IBOutlet weak var submitButton: UIButton!
    
    var didActivityFinishedCallback: ((String) -> Void)?
    var checkSingleAnswer: ((String) -> Bool)?
    var selectedAnswer: String?
    var state: ActivityMessageState = .ongoing {
        didSet {
            submitButton?.isEnabled = (state == .ongoing)
        }
    }
    var options = [String]() {
        didSet {
            messageOptionsStack.addArrangedSubviewsIfEmpty(
                SingleChoiceMessageOptionView.map(
                    from: options,
                    onOptionTapped: onOptionTapped)
            )
        }
    }
    
    override func awakeFromNib() {
        submitButton.addTarget(self, action: #selector(submitAnswer), for: .touchUpInside)
    }
    
    func configure(with message: SingleChoiceMessage, didActivityFinishedCallback: @escaping (String) -> Void) {
        state = .ongoing
        messageLabel.text = message.prompt
        options = message.options
        checkSingleAnswer = message.checkAnswer
        self.didActivityFinishedCallback = didActivityFinishedCallback
        
        // if activity has selectedAnswer, then finish activity immediately
        // with no callback
        if let prevSelectedAnswer = message.selectedAnswer {
            selectedAnswer = prevSelectedAnswer
            self.didActivityFinishedCallback = nil
            finishActivity(withAnswer: prevSelectedAnswer)
        }
    }
    
    func finishActivity(withAnswer answer: String) {
        guard let isCorrect = checkSingleAnswer?(answer) else { return }
        
        // set state as ended
        state = .done
        
        // set selected answer view as correct or incorrect
        messageOptionsStack.arrangedSubviews
            .compactMap { $0 as? SingleChoiceMessageOptionView }
            .first { $0.optionLabel.text == answer }
            .map { isCorrect ? $0.setCorrect() : $0.setIncorrect() }
        
        // run callback
        didActivityFinishedCallback?(answer)
    }
    
    func onOptionTapped(_ sender: SingleChoiceMessageOptionView, option: String) {
        guard state == .ongoing else { return }
        
        selectedAnswer = option
        
        // set view as selected
        sender.setSelected()
        
        // unselect all other views
        messageOptionsStack.arrangedSubviews
            .filter { $0 != sender }
            .compactMap { $0 as? SingleChoiceMessageOptionView }
            .forEach { $0.setUnselect() }
    }
    
    @objc func submitAnswer() {
        selectedAnswer.map { finishActivity(withAnswer: $0) }
    }
    
    override func prepareForReuse() {
        messageOptionsStack.removeAllArrangedSubviews()
    }
    
}
