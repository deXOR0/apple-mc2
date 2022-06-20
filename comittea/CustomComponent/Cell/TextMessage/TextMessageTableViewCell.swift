//
//  NarrationMessageTableViewCell.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 19/06/22.
//

import UIKit

// TODO: set font as Medium
class TextMessageTableViewCell: UITableViewCell {
    
    enum TextMessageType {
        case narration
        case compy
        case user
    }
    
    var type: TextMessageType = .compy
    
    lazy var messageLabel: UILabel = {
        var l = UILabel()
        l.numberOfLines = 0
        l.font = UIFont(name: "Montserrat", size: 12)
        l.textColor = .black
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    lazy var messageBackground: UIView = {
        var v = UIView()
        v.layer.cornerRadius = 15
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    override func layoutSubviews() {
        messageBackground.addSubview(messageLabel)
        contentView.addSubview(messageBackground)
        
        NSLayoutConstraint.activate([
            messageLabel.leadingAnchor.constraint(equalTo: messageBackground.leadingAnchor, constant: 10),
            messageLabel.trailingAnchor.constraint(equalTo: messageBackground.trailingAnchor, constant: -10),
            messageLabel.topAnchor.constraint(equalTo: messageBackground.topAnchor, constant: 10),
            messageLabel.bottomAnchor.constraint(equalTo: messageBackground.bottomAnchor, constant: -10),
            
            messageBackground.topAnchor.constraint(equalTo: contentView.topAnchor),
        ])
        
        switch (type) {
        case .narration:
            messageLabel.font = UIFont(name: "Montserrat", size: 10)
            messageBackground.backgroundColor = CustomColors.lightOrange
            messageBackground.layer.cornerRadius = 5
            
            NSLayoutConstraint.activate([
                messageBackground.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
                messageBackground.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                messageBackground.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            ])
        case .compy:
            messageLabel.textColor = .white
            messageBackground.backgroundColor = CustomColors.blue
            
            NSLayoutConstraint.activate([
                messageBackground.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
                messageBackground.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                messageBackground.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: 115),
            ])
        case .user:
            messageBackground.backgroundColor = CustomColors.gray
            
            NSLayoutConstraint.activate([
                messageBackground.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
                messageBackground.leadingAnchor.constraint(greaterThanOrEqualTo: contentView.leadingAnchor, constant: 115),
                messageBackground.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            ])
        }
    }
    
    override func prepareForReuse() {
        messageLabel.removeFromSuperview()
        messageBackground.removeFromSuperview()
    }
    
}
