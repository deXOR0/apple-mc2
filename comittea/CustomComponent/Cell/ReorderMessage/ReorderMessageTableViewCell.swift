//
//  ReorderMessageTableViewCell.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 23/06/22.
//

import UIKit

class ReorderMessageTableViewCell: UITableViewCell, ActivityMessageCellConfigurable {
    
    typealias M = ReorderMessage
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageOptionsTable: UITableView!
    @IBOutlet weak var messageOptionsStack: UIStackView!
    @IBOutlet weak var submitButton: UIButton!
    
    var didActivityFinishedCallback: (([String]) -> Void)?
    var checkSingleAnswer: ((String, Int) -> Bool)?
    var state: ActivityMessageState = .ongoing {
        didSet {
            submitButton?.isEnabled = (state == .ongoing)
        }
    }
    var options = [String]() {
        didSet {
            messageOptionsStack.addArrangedSubviewsIfEmpty(
                ReorderMessageOptionView.map(from: options)
            )
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        submitButton.addTarget(self, action: #selector(submitAnswer), for: .touchUpInside)
        
        messageOptionsTable.dataSource = self
        messageOptionsTable.delegate = self
        messageOptionsTable.isEditing = true
        messageOptionsTable.register(UINib(nibName: "ReorderMessageOptionCell", bundle: nil), forCellReuseIdentifier: "ReorderMessageOptionCellID")
    }
    
    func configure(with message: ReorderMessage, didActivityFinishedCallback: @escaping ([String]) -> Void) {
        state = .ongoing
        messageLabel.text = message.prompt
        options = message.options
        checkSingleAnswer = message.checkSingleAnswer
        self.didActivityFinishedCallback = didActivityFinishedCallback
        
        reloadOptionsTable()
        
        // if activity has selectedAnswer, then finish activity immediately
        // with no callback
        // also, set options as previous order
        if let prevOrder = message.selectedAnswer {
            options = prevOrder
            self.didActivityFinishedCallback = nil
            finishActivity(withAnswer: prevOrder)
        }
    }
    
    func finishActivity(withAnswer answer: [String]) {
        // set state as ended
        state = .done
        
        // show correct and incorrect answers in options table
        reloadOptionsTable()
        
        // run callback
        didActivityFinishedCallback?(answer)
    }
    
    @objc func submitAnswer() {
        finishActivity(withAnswer: options)
    }
    
    override func prepareForReuse() {
        messageOptionsStack.removeAllArrangedSubviews()
    }
    
    func reloadOptionsTable() {
        DispatchQueue.main.async {
            self.messageOptionsTable.reloadData()
        }
    }
}

