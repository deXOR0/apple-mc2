//
//  NarrationMessageTableViewCell.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 19/06/22.
//

import UIKit

class TextMessageTableViewCell: UITableViewCell {
    
    var config: TextMessageTableViewCellConfig = CompyMessageConfig() {
        didSet {
            config.configureCell(self)
            layoutSubviews()
        }
    }
    
    lazy var messageLabel: UILabel = {
        var l = UILabel()
        l.numberOfLines = 0
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    lazy var messageBackground: UIView = {
        var v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        messageBackground.addSubview(messageLabel)
        contentView.addSubview(messageBackground)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        messageBackground.addSubview(messageLabel)
        contentView.addSubview(messageBackground)
    }
    
    override func layoutSubviews() {
        NSLayoutConstraint.activate([
            messageLabel.leadingAnchor.constraint(equalTo: messageBackground.leadingAnchor, constant: 10),
            messageLabel.trailingAnchor.constraint(equalTo: messageBackground.trailingAnchor, constant: -10),
            messageLabel.topAnchor.constraint(equalTo: messageBackground.topAnchor, constant: 10),
            messageLabel.bottomAnchor.constraint(equalTo: messageBackground.bottomAnchor, constant: -10),
            
            messageBackground.topAnchor.constraint(equalTo: contentView.topAnchor),
        ])
        
        config.configureLayout(self)
    }
    
    override func prepareForReuse() {
        messageLabel.removeFromSuperview()
        messageBackground.removeFromSuperview()
    }
    
}
