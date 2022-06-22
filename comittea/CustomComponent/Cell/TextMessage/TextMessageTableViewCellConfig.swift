//
//  TextMessageTableViewCellConfig.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 22/06/22.
//

import Foundation
import UIKit

protocol TextMessageTableViewCellConfig {
    func configureCell(_ cell: TextMessageTableViewCell)
    func configureLayout(_ cell: TextMessageTableViewCell)
}

class CompyMessageConfig: TextMessageTableViewCellConfig {
    
    func configureCell(_ cell: TextMessageTableViewCell) {
        cell.messageLabel.textColor = .white
        cell.messageLabel.font = .medium12
        cell.messageBackground.backgroundColor = .myBlue
        cell.messageBackground.layer.cornerRadius = 15
    }
    
    func configureLayout(_ cell: TextMessageTableViewCell) {
        NSLayoutConstraint.activate([
            cell.messageBackground.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -5),
            cell.messageBackground.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor),
            cell.messageBackground.trailingAnchor.constraint(lessThanOrEqualTo: cell.contentView.trailingAnchor, constant: 115),
        ])
    }
    
}

class NarrationMessageConfig: TextMessageTableViewCellConfig {
    
    func configureCell(_ cell: TextMessageTableViewCell) {
        cell.messageLabel.textColor = .black
        cell.messageLabel.font = .medium10
        cell.messageBackground.backgroundColor = .myLightOrange
        cell.messageBackground.layer.cornerRadius = 5
    }
    
    func configureLayout(_ cell: TextMessageTableViewCell) {
        NSLayoutConstraint.activate([
            cell.messageBackground.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -8),
            cell.messageBackground.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor),
            cell.messageBackground.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor),
        ])
    }
    
}

class UserMessageConfig: TextMessageTableViewCellConfig {
    
    func configureCell(_ cell: TextMessageTableViewCell) {
        cell.messageLabel.textColor = .black
        cell.messageLabel.font = .medium12
        cell.messageBackground.backgroundColor = .myLightGray
        cell.messageBackground.layer.cornerRadius = 15
    }
    
    func configureLayout(_ cell: TextMessageTableViewCell) {
        NSLayoutConstraint.activate([
            cell.messageBackground.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -5),
            cell.messageBackground.leadingAnchor.constraint(greaterThanOrEqualTo: cell.contentView.leadingAnchor, constant: 115),
            cell.messageBackground.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor),
        ])
    }
    
}
