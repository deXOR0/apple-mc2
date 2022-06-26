//
//  MultiSelectMessageTableViewCell.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 26/06/22.
//

import UIKit

class MultiSelectMessageTableViewCell: UITableViewCell, ActivityMessageCellConfigurable {
    
    typealias M = MultiSelectMessage

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageOptionsStack: UIStackView!
    @IBOutlet weak var submitButton: UIButton!
    
    var didActivityFinishedCallback: (([String]) -> Void)?
    var checkSingleAnswer: ((String) -> Bool)?
    var selectedAnswers = [String]()
    var state: ActivityMessageState = .ongoing {
        didSet {
            submitButton?.isEnabled = (state == .ongoing)
        }
    }
    var options = [String]() {
        didSet {
            messageOptionsStack.addArrangedSubviewsIfEmpty(
                MultiSelectMessageOptionView.map(
                    from: options,
                    onOptionTapped: self.onOptionTapped)
            )
        }
    }
    
    override func awakeFromNib() {
        submitButton.addTarget(self, action: #selector(submitAnswer), for: .touchUpInside)
    }
    
    func configure(with message: MultiSelectMessage, didActivityFinishedCallback: @escaping ([String]) -> Void) {
        messageLabel.text = message.prompt
        options = message.options
        state = message.selectedAnswer == nil ? .ongoing : .done
        checkSingleAnswer = message.checkSingleAnswer
        
        // if activity already has selectedAnswer, then finish activity immediately
        // with no callback
        // also, set selectedAnswers to previous if there are some
        if let prevSelectedAnswer = message.selectedAnswer {
            selectedAnswers = prevSelectedAnswer
            self.didActivityFinishedCallback = nil
            finishActivity(withAnswer: prevSelectedAnswer)
        } else {
            selectedAnswers = []
            self.didActivityFinishedCallback = didActivityFinishedCallback
        }
    }
    
    func finishActivity(withAnswer answer: [String]) {
        // set state as ended
        state = .done
        
        // set selected & unselected in options table
        messageOptionsStack.arrangedSubviews
            .compactMap { $0 as? MultiSelectMessageOptionView }
            .forEach {
                guard let option = $0.option else { return }
                
                answer.contains(option) ? $0.setSelected() : $0.setUnselect()
            }
        
        // show correct and incorrect answers in options table
        messageOptionsStack.arrangedSubviews
            .compactMap { $0 as? MultiSelectMessageOptionView }
            .forEach {
                guard
                    let option = $0.option,
                    let isCorrect = checkSingleAnswer?(option)
                else { return }
                
                isCorrect ? $0.setCorrect() : $0.setIncorrect()
            }
        
        // run callback
        didActivityFinishedCallback?(answer)
    }
    
    func onOptionTapped(_ sender: MultiSelectMessageOptionView, option: String) {
        guard state == .ongoing else { return }
        
        // if already selected, remove from selectedAnswers and unselect view
        if selectedAnswers.contains(option) {
            selectedAnswers.removeAll { $0 == option }
            sender.setUnselect()
            return
        }
        
        // if not in selectedAnswers yet, add it
        selectedAnswers.append(option)
        sender.setSelected()
    }
    
    @objc func submitAnswer() {
        guard !selectedAnswers.isEmpty else { return }
        
        finishActivity(withAnswer: selectedAnswers)
    }
    
    override func prepareForReuse() {
        messageOptionsStack.removeAllArrangedSubviews()
    }
}
