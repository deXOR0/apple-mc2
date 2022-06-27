//
//  MessageCell.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 26/06/22.
//

import Foundation
import UIKit

protocol ActivityMessageCellConfigurable: UITableViewCell {
    associatedtype M: ActivityMessage
    
    func configure(with message: M, didActivityFinishedCallback: @escaping (M.Answer) -> Void)
    
    func finishActivity(withAnswer answer: M.Answer)
}


