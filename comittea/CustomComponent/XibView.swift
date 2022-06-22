//
//  XibView.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 21/06/22.
//

import Foundation
import UIKit

protocol XibView {
    static var nibName: String { get }
}

extension XibView where Self: UIView {
    static func fromXib() -> Self? {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: nil).first as? Self
    }
}
