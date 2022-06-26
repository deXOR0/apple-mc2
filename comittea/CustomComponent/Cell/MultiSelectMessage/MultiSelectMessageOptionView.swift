//
//  MultiSelectMessageOptionView.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 26/06/22.
//

import UIKit

class MultiSelectMessageOptionView: UIView, XibView {
    
    @IBOutlet weak var optionCheckbox: UIImageView!
    @IBOutlet weak var optionLabel: UILabel!
    
    var onOptionTapped: ((MultiSelectMessageOptionView, String) -> Void)?
    var option: String? {
        didSet {
            option.map { optionLabel.text = $0 }
        }
    }
    
    static var nibName: String = "MultiSelectMessageOptionView"
    
    static func map(
        from options: [String],
        onOptionTapped: @escaping (MultiSelectMessageOptionView, String) -> Void) -> [UIView]
    {
        options.map { option in
            guard let view = MultiSelectMessageOptionView.fromXib() else { return UIView() }
            
            view.option = option
            view.onOptionTapped = onOptionTapped
            
            return view
        }
    }
    
    override func awakeFromNib() {
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTap)))
    }
    
    @objc func onTap() {
        option.map { onOptionTapped?(self, $0) }
    }
    
    func setSelected() {
        self.layer.borderColor = UIColor.myBlue.cgColor
        self.layer.borderWidth = 2
        optionCheckbox.image = .init(systemName: "checkmark.square.fill")
    }
    
    func setUnselect() {
        self.layer.borderColor = nil
        self.layer.borderWidth = 0
        optionCheckbox.image = .init(systemName: "checkmark.square")
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
