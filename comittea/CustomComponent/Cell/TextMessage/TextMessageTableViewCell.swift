//
//  NarrationMessageTableViewCell.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 19/06/22.
//

import UIKit

class TextMessageTableViewCell: UITableViewCell {
    
    var config: TextMessageTableViewCellConfig? {
        didSet {
            guard let config = config else { return }
            config.setStyle(forCell: self)
            config.setMessageBackgroundConstraints(forCell: self)
        }
    }
    var messageBackgroundConstraints = [NSLayoutConstraint]()
    
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
        
        setMessageLabelConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setMessageLabelConstraints() {
        NSLayoutConstraint.activate([
            messageLabel.leadingAnchor.constraint(equalTo: messageBackground.leadingAnchor, constant: 12),
            messageLabel.trailingAnchor.constraint(equalTo: messageBackground.trailingAnchor, constant: -12),
            messageLabel.topAnchor.constraint(equalTo: messageBackground.topAnchor, constant: 12),
            messageLabel.bottomAnchor.constraint(equalTo: messageBackground.bottomAnchor, constant: -12),
        ])
    }
    
    override func prepareForReuse() {
        // Deactivate constraints from view before reuse
        // so they don't stack
        NSLayoutConstraint.deactivate(messageBackgroundConstraints)
    }
    
}
