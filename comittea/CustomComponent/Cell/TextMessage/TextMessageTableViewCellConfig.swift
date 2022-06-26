//
//  TextMessageTableViewCellConfig.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 22/06/22.
//

import Foundation
import UIKit

protocol TextMessageTableViewCellConfig {
    func setStyle(forCell cell: TextMessageTableViewCell)
    func setMessageBackgroundConstraints(forCell cell: TextMessageTableViewCell)
}

class CompyMessageConfig: TextMessageTableViewCellConfig {
    
    func setStyle(forCell cell: TextMessageTableViewCell) { 
        cell.messageLabel.textColor = .white
        cell.messageLabel.font = .medium15
        cell.messageBackground.backgroundColor = .myBlue
        cell.messageBackground.layer.cornerRadius = 15
    }
    
    func setMessageBackgroundConstraints(forCell cell: TextMessageTableViewCell) {
        cell.messageBackgroundConstraints = [
            cell.messageBackground.topAnchor.constraint(equalTo: cell.contentView.topAnchor),
            cell.messageBackground.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -5),
            cell.messageBackground.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor),
            cell.messageBackground.trailingAnchor.constraint(lessThanOrEqualTo: cell.contentView.trailingAnchor, constant: 115),
        ]
        
        NSLayoutConstraint.activate(cell.messageBackgroundConstraints)
        cell.layoutIfNeeded()
    }
    
}

class NarrationMessageConfig: TextMessageTableViewCellConfig {
    
    func setStyle(forCell cell: TextMessageTableViewCell) {
        cell.messageLabel.textColor = .black
        cell.messageLabel.font = .medium14
        cell.messageBackground.backgroundColor = .myLightOrange
        cell.messageBackground.layer.cornerRadius = 5
    }
    
    func setMessageBackgroundConstraints(forCell cell: TextMessageTableViewCell) {
        cell.messageBackgroundConstraints = [
            cell.messageBackground.topAnchor.constraint(equalTo: cell.contentView.topAnchor),
            cell.messageBackground.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -8),
            cell.messageBackground.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor),
            cell.messageBackground.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor),
        ]
        
        NSLayoutConstraint.activate(cell.messageBackgroundConstraints)
        cell.layoutIfNeeded()
    }
    
}

class UserMessageConfig: TextMessageTableViewCellConfig {
    
    func setStyle(forCell cell: TextMessageTableViewCell) {
        cell.messageLabel.textColor = .black
        cell.messageLabel.font = .medium15
        cell.messageBackground.backgroundColor = .myLightGray
        cell.messageBackground.layer.cornerRadius = 15
    }
    
    func setMessageBackgroundConstraints(forCell cell: TextMessageTableViewCell) {
        cell.messageBackgroundConstraints = [
            cell.messageBackground.topAnchor.constraint(equalTo: cell.contentView.topAnchor),
            cell.messageBackground.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -5),
            cell.messageBackground.leadingAnchor.constraint(greaterThanOrEqualTo: cell.contentView.leadingAnchor, constant: 115),
            cell.messageBackground.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor),
        ]
        
        NSLayoutConstraint.activate(cell.messageBackgroundConstraints)
        cell.layoutIfNeeded()
    }
    
}
