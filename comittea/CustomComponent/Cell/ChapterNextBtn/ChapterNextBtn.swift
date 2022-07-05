//
//  ChapterNextBtn.swift
//  comittea
//
//  Created by Dennis Anthony on 04/07/22.
//

import UIKit

class ChapterNextBtn: UITableViewCell {
    
    var onTapped: (() -> Void)?

    @IBOutlet weak var NextBtn: UIButton! {
        didSet{
            NextBtn.layer.cornerRadius = 15
            NextBtn.layer.masksToBounds = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func NextBtn(_ sender: Any) {
        onTapped?()
    }
    
}
