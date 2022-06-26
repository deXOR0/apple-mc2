//
//  RearrangeOptionView.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 23/06/22.
//

import UIKit

class ReorderMessageOptionView: UIView, XibView {

    static var nibName: String = "ReorderMessageOptionView"

    @IBOutlet weak var optionLabel: UILabel!
    
    static func map(from options: [String]) -> [UIView] {
        options.map { option in
            guard let view = ReorderMessageOptionView.fromXib() else { return UIView() }
            
            view.optionLabel.text = option
            
            return view
        }
    }
}
