//
//  SingleChoiceMessageTableViewCell.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 20/06/22.
//

import UIKit

class SingleChoiceMessageTableViewCell: UITableViewCell {
    
    var options = ["A", "B"] {
        didSet {
            
        }
    }
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageOptionsTable: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        messageOptionsTable.rowHeight = UITableView.automaticDimension
        messageOptionsTable.dataSource = self
        messageOptionsTable.register(UINib(nibName: "SingleChoiceMessageOptionCell", bundle: nil), forCellReuseIdentifier: "SingleChoiceMessageOptionCellID")
    }

}

extension SingleChoiceMessageTableViewCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SingleChoiceMessageOptionCellID", for: indexPath) as! SingleChoiceMessageOptionCell
        
        cell.optionLabel.text = options[indexPath.row]
        
        return cell
    }
    
    
}
