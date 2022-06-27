//
//  ReorderMessageCell.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 23/06/22.
//

import UIKit

class ReorderMessageOptionCell: UITableViewCell, XibView {
    
    @IBOutlet weak var optionBackground: UIView!
    @IBOutlet weak var optionLabel: UILabel!
    
    static var nibName: String = "ReorderMessageOptionCell"
    
    // This is here so that the contentView expands
    // to the edge even when table view is in editing mode
    override func layoutSubviews() {
        super.layoutSubviews()

        self.contentView.frame = self.bounds
    }
    
    func setCorrect() {
        optionBackground.layer.borderColor = UIColor.myGreen.cgColor
        optionBackground.layer.borderWidth = 2
    }
    
    func setIncorrect() {
        optionBackground.layer.borderColor = UIColor.myRed.cgColor
        optionBackground.layer.borderWidth = 2
    }
    
    func setDefault() {
        optionBackground.layer.borderColor = nil
        optionBackground.layer.borderWidth = 0
    }

}
