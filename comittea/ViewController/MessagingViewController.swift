//
//  MessageUIViewController.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 19/06/22.
//

import UIKit

    
// TODO: add navigation bar title
// TODO: add asset on header
// TODO: handle ActivityMessage
class MessagingViewController: UIViewController {

    var messages: [Message] = [
        NarrationMessage("What a boring weekend I am having right now. Just sitting and doing nothing. Suddenly it hits me, I could go to the movies with my friends. I ask Cody to help me plan my movie night."),
        CompyConversationMessage("You’re going to the movies?"),
        UserCoversationMessage("Yes I am."),
    ]
    var visibleMessages = 0
    
    @IBOutlet weak var messagingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        messagingTableView.dataSource = self
        messagingTableView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onScreenTapped)))
        messagingTableView.register(TextMessageTableViewCell.self, forCellReuseIdentifier: "MessagingTableViewCellID")
    }
    
    @objc func onScreenTapped(_ gesture: UITapGestureRecognizer) {
        if visibleMessages < messages.count {
            let lastIndex = IndexPath(row: visibleMessages, section: 0)
            
            visibleMessages += 1
            
            messagingTableView.insertRows(at: [lastIndex], with: .fade)
            messagingTableView.scrollToRow(at: lastIndex, at: .bottom, animated: true)
        }
    }

}



extension MessagingViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        visibleMessages
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let message = messages[indexPath.row] as? TextMessage {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessagingTableViewCellID", for: indexPath) as! TextMessageTableViewCell
            
            cell.messageLabel.text = message.text
            
            switch message {
            case is NarrationMessage:
                cell.type = .narration
            case is UserCoversationMessage:
                cell.type = .user
            default:
                cell.type = .compy
            }
            
            cell.layoutSubviews()
            
            return cell
        }
        
        return UITableViewCell()
    }
    
}
