//
//  MessageCell.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 26/06/22.
//

import Foundation
import UIKit

protocol ActivityMessageCellConfigurable: UITableViewCell {
    associatedtype ActivityMessageType: ActivityMessage
    
    func configure(with message: ActivityMessageType, didActivityFinishedCallback: @escaping (ActivityMessageType.Answer) -> Void)
    
    func finishActivity(withAnswer answer: ActivityMessageType.Answer)
}


