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

    @IBAction func skipBtn(_ sender: Any) {
        performSegue(withIdentifier: "gotoIntermezzo", sender: self)
    }
    var storyTitle: String = ""
    var chapter: Chapter = Chapter("", "", [Message]())
    var messages: [Message] = [
        NarrationMessage("What a boring weekend I am having right now. Just sitting and doing nothing. Suddenly it hits me, I could go to the movies with my friends. I ask Cody to help me plan my movie night."),
        CompyConversationMessage("You’re going to the movies?"),
        UserConversationMessage("Yes I am."),
        SingleChoiceMessage(
            "Do you think it is necessary to list and reorder the tasks that we wanted to do?",
            ["A. Yes it is", "B. I don’t think so"],
            "A. Yes it is",
            CompyTrueMessage("Yoi"),
            CompyFalseMessage("Salah lu cuk")),
    ]
    var visibleMessages = 0
    
    @IBOutlet weak var messagingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        messagingTableView.dataSource = self
        messagingTableView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onScreenTapped)))
        messagingTableView.register(TextMessageTableViewCell.self, forCellReuseIdentifier: "TextMessageTableViewCellID")
        messagingTableView.register(UINib(nibName: "SingleChoiceMessageTableViewCell", bundle: nil), forCellReuseIdentifier: "SingleChoiceMessageTableViewCellID")
    }
    
    @objc func onScreenTapped(_ gesture: UITapGestureRecognizer) {
        insertMessage()
    }
    
    func insertMessage() {
        if visibleMessages < messages.count {
            let lastIndex = IndexPath(row: visibleMessages, section: 0)
            
            visibleMessages += 1
            
            messagingTableView.insertRows(at: [lastIndex], with: .fade)
            messagingTableView.scrollToRow(at: lastIndex, at: .bottom, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoIntermezzo" {
            let destinationVC = segue.destination as? T10_36_Story_Intermezzo
            destinationVC?.chapter = chapter
        }
    }

}

extension MessagingViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        visibleMessages
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let message = messages[indexPath.row] as? TextMessage {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextMessageTableViewCellID", for: indexPath) as! TextMessageTableViewCell
            
            cell.messageLabel.text = message.text
            
            switch message {
            case is NarrationMessage:
                cell.type = .narration
            case is UserConversationMessage:
                cell.type = .user
            default:
                cell.type = .compy
            }
            
            cell.layoutSubviews()
            
            return cell
        }
        
        if let message = messages[indexPath.row] as? SingleChoiceMessage {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SingleChoiceMessageTableViewCellID", for: indexPath) as! SingleChoiceMessageTableViewCell
            
            cell.messageLabel.text = message.prompt
            cell.options = message.options
            cell.checkAnswerDelegate = { [weak self]
                option in
                defer { self?.insertMessage() }
                
                if  message.checkAnswer(option) {
                    // show true response
                    self?.messages.append(message.trueResponse)
                    
                    return true
                }
                
                // show false response
                self?.messages.append(message.falseResponse)
                
                return false
            }
            
            return cell
        }
        
        return UITableViewCell()
    }
    
}
