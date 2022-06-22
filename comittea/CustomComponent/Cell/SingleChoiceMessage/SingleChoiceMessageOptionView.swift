//
//  SingleChoiceOptionViewController.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 21/06/22.
//

import UIKit

class SingleChoiceMessageOptionView: UIView, XibView {
    
    var onOptionTapped: (() -> Void)?
    
    static var nibName: String = "SingleChoiceMessageOptionView"
    
    @IBOutlet weak var optionLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onOptionTappedWrapper)))
    }
    
    @objc func onOptionTappedWrapper(_ gesture: UITapGestureRecognizer) {
        onOptionTapped?()
    }

}
