//
//  SingleChoiceOptionViewController.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 21/06/22.
//

import UIKit

class SingleChoiceMessageOptionView: UIView, XibView {
    
    @IBOutlet weak var optionLabel: UILabel!
    
    var onOptionTapped: ((SingleChoiceMessageOptionView, String) -> Void)?
    
    static var nibName: String = "SingleChoiceMessageOptionView"
    
    static func map(
        from options: [String],
        onOptionTapped: @escaping (SingleChoiceMessageOptionView, String) -> Void) -> [UIView]
    {
        options.map { option in
            guard let view = SingleChoiceMessageOptionView.fromXib() else { return UIView() }
            
            view.optionLabel.text = option
            view.onOptionTapped = onOptionTapped
            
            return view
        }
    }

    override func awakeFromNib() {
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTap)))
    }
    
    @objc func onTap() {
        guard let option = optionLabel.text else { return }
        onOptionTapped?(self, option)
    }
    
    func setSelected() {
        self.layer.borderColor = UIColor.myBlue.cgColor
        self.layer.borderWidth = 2
    }
    
    func setUnselect() {
        self.layer.borderColor = nil
        self.layer.borderWidth = 0
    }
    
    func setCorrect() {
        self.layer.borderColor = UIColor.myGreen.cgColor
        self.layer.borderWidth = 2
    }
    
    func setIncorrect() {
        self.layer.borderColor = UIColor.myRed.cgColor
        self.layer.borderWidth = 2
    }

}
