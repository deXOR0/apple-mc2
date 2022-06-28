//
//  MessagingViewController+TableView.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 27/06/22.
//

import Foundation
import UIKit

extension MessagingViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        visibleMessages
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        
        // If the last visible message is TextMessage, then user can continue story
        // else if last visible message is ActivityMessage, user can't continue story
        let isLastVisibleMessage = (index == visibleMessages - 1)
        if isLastVisibleMessage {
            canContinueStory = (messages[index] is TextMessage)
        }
        
        if let message = messages[index] as? TextMessage {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextMessageTableViewCellID", for: indexPath) as! TextMessageTableViewCell
            
            configureTextMessageCell(cell, with: message, at: index)
            
            return cell
        }
        
        if let message = messages[index] as? SingleChoiceMessage {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SingleChoiceMessageTableViewCellID", for: indexPath) as! SingleChoiceMessageTableViewCell
            
            configureActivityMessageCell(cell, with: message, at: index)
            
            return cell
        }
        
        if var message = messages[index] as? SingleChoiceHiLoMessage {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SingleChoiceMessageTableViewCellID", for: indexPath) as! SingleChoiceMessageTableViewCell
            
            cell.configure(with: message) { [weak self] selectedAnswer in
                var tempMessage = message
                tempMessage.selectedAnswer = selectedAnswer
                self?.messages[index] = tempMessage
                
                var nextMessage: Message
                if message.checkAnswer(selectedAnswer) {
                    nextMessage = message.trueResponse
                } else {
                    message.selectedAnswer = selectedAnswer
                    nextMessage = message.buildNextMessage()
                }
                
                self?.messages.insert(nextMessage, at: index + 1)
                self?.showNextMessage()
            }
            
            return cell
        }
        
        if let message = messages[index] as? ReorderMessage {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReorderMessageTableViewCellID", for: indexPath) as! ReorderMessageTableViewCell
            
            configureActivityMessageCell(cell, with: message, at: index)
            
            return cell
        }
        
        if let message = messages[index] as? MultiSelectMessage {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MultiSelectMessageTableViewCellID", for: indexPath) as! MultiSelectMessageTableViewCell
            
            configureActivityMessageCell(cell, with: message, at: index)
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func configureTextMessageCell(
        _ cell: TextMessageTableViewCell,
        with message: TextMessage,
        at index: Int
    ) {
        cell.messageLabel.text = String(format: message.text, userName)
        
        switch message {
        case is NarrationMessage:
            cell.config = NarrationMessageConfig()
        case is UserConversationMessage:
            cell.config = UserMessageConfig()
        default:
            cell.config = CompyMessageConfig()
        }
    }
    
    func configureActivityMessageCell<C: ActivityMessageCellConfigurable>(
        _ cell: C,
        with message: C.ActivityMessageType,
        at index: Int
    ) {
        cell.configure(with: message) { [weak self] selectedAnswer in
            var tempMessage = message
            tempMessage.selectedAnswer = selectedAnswer
            self?.messages[index] = tempMessage
            
            var nextMessage: Message
            if message.checkAnswer(selectedAnswer) {
                nextMessage = message.trueResponse
            } else {
                if message.repeating {
                    var tempMessage2 = message
                    tempMessage2.prompt = message.falseResponse.text
                    nextMessage = tempMessage2
                } else {
                    nextMessage = message.falseResponse
                }
            }
            
            self?.messages.insert(nextMessage, at: index + 1)
            self?.showNextMessage()
        }
    }
    
}
