//
//  SingleChoiceMessageTableViewCell.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 20/06/22.
//

import UIKit

class SingleChoiceMessageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageOptionsStack: UIStackView!
    
    enum State {
        case ongoing
        case done
    }
    
    var checkAnswerDelegate: ((String) -> Bool)?
    var options = [String]() {
        didSet {
            addOptionViews()
        }
    }
    var state: State = .ongoing
    
    override func prepareForReuse() {
        removeOptionViews()
    }
    
    func addOptionViews() {
        options.forEach { option in
            guard let view = SingleChoiceMessageOptionView.fromXib() else { return }
            
            view.optionLabel.text = option
            view.onOptionTapped = { [weak self] in
                guard self?.state == .ongoing else { return }
                defer { self?.state = .done }
                
                if let isCorrect = self?.checkAnswerDelegate?(option) {
                    if isCorrect {
                        view.backgroundColor = .myGreen
                        return
                    }
                    
                    view.backgroundColor = .myRed
                }
            }
            
            messageOptionsStack.addArrangedSubview(view)
        }
    }
    
    func removeOptionViews() {
        messageOptionsStack.arrangedSubviews.forEach { view in
            messageOptionsStack.removeArrangedSubview(view)
        }
    }
    
}
