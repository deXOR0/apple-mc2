//
//  ReorderMessageTableViewCell+TableView.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 26/06/22.
//

import Foundation
import UIKit

extension ReorderMessageTableViewCell: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = messageOptionsTable.dequeueReusableCell(withIdentifier: "ReorderMessageOptionCellID", for: indexPath) as! ReorderMessageOptionCell
        
        cell.optionLabel.text = options[indexPath.row]
        cell.setDefault()
        
        if state == .done {
            if let isCorrect = checkSingleAnswer?(options[indexPath.row], indexPath.row) {
                isCorrect ? cell.setCorrect() : cell.setIncorrect()
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let option = options[sourceIndexPath.row]
        options.remove(at: sourceIndexPath.row)
        options.insert(option, at: destinationIndexPath.row)
    }
    
    // MARK: prevent delete button on table view edit
    
    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    
}
