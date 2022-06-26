//
//  MessageUIViewController.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 19/06/22.
//

import UIKit

    
// TODO: add navigation bar title
// TODO: add asset on header
// TODO: handle repeating message
class MessagingViewController: UIViewController {

    @IBAction func skipBtn(_ sender: Any) {
        performSegue(withIdentifier: "gotoIntermezzo", sender: self)
    }
    
    var storyTitle: String = ""
    var chapter: Chapter = Chapter("", "","", [Message]())
    var messages: [Message] = [
        NarrationMessage("What a boring weekend I am having right now. Just sitting and doing nothing. Suddenly it hits me, I could go to the movies with my friends. I ask Cody to help me plan my movie night."),
        CompyConversationMessage("You’re going to the movies?"),
        UserConversationMessage("Yes I am."),
        MultiSelectMessage(
            "What’s the task that need to be done for watching in cinema? ",
            ["Choosing Movie",
             "Gather friends",
             "Buying tickets online",
             "Meet up with friends",
             "Watch the movie",
             "Taking seats at the cinema",
            ],
            ["Choosing Movie", "Gather friends"],
            CompyTrueMessage("Yoi betul"),
            CompyFalseMessage("Lho")),
        ReorderMessage(
            "What’s the task that need to be done for watching in cinema? ",
            ["Choosing Movie",
             "Gather friends",
             "Buying tickets online",
             "Meet up with friends",
             "Watch the movie",
             "Taking seats at the cinema",
            ],
            ["Choosing Movie", "Gather friends"],
            CompyTrueMessage("Yoi betul"),
            CompyFalseMessage("Lho")),
        SingleChoiceMessage(
            "Do you think it is necessary to list and reorder the tasks that we wanted to do?",
            ["A. Yes it is", "B. I don’t think so"],
            "A. Yes it is",
            CompyTrueMessage("Yoi"),
            CompyFalseMessage("Salah lu cuk")),

    ]
    var visibleMessages = 0
    
    /// True if user can continue the story by tapping on screen.
    /// Set to false when there is ActivityMessage
    var canContinueStory = true
    
    @IBOutlet weak var messagingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = storyTitle
        
        messagingTableView.dataSource = self
        messagingTableView.delegate = self
        messagingTableView.allowsSelection = false
        messagingTableView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onScreenTapped)))
        messagingTableView.register(TextMessageTableViewCell.self, forCellReuseIdentifier: "TextMessageTableViewCellID")
        messagingTableView.register(UINib(nibName: "SingleChoiceMessageTableViewCell", bundle: nil), forCellReuseIdentifier: "SingleChoiceMessageTableViewCellID")
        messagingTableView.register(UINib(nibName: "MultiSelectMessageTableViewCell", bundle: nil), forCellReuseIdentifier: "MultiSelectMessageTableViewCellID")
        messagingTableView.register(UINib(nibName: "ReorderMessageTableViewCell", bundle: nil), forCellReuseIdentifier: "ReorderMessageTableViewCellID")
        
    }
    
    @objc func onScreenTapped(_ gesture: UITapGestureRecognizer) {
        guard canContinueStory else { return }
        
        showNextMessage()
    }
    
    func showNextMessage() {
        guard visibleMessages < messages.count else { return }
        
        let lastIndex = IndexPath(row: visibleMessages, section: 0)
        
        visibleMessages += 1
        
        DispatchQueue.main.async {
            self.messagingTableView.insertRows(at: [lastIndex], with: .fade)
            self.messagingTableView.scrollToRow(at: lastIndex, at: .bottom, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoIntermezzo" {
            let destinationVC = segue.destination as? T10_36_Story_Intermezzo
            destinationVC?.chapter = chapter
            destinationVC?.storyTitle = storyTitle
        }
    }
    
    @IBAction func unwindtoMessaging( _ seg: UIStoryboardSegue) {
        if let sourceViewController = seg.source as? T10_36_Story_Intermezzo {
            self.chapter = sourceViewController.nextChapter
        }
    }

}

extension MessagingViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        visibleMessages
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        
        if let message = messages[index] as? TextMessage {
            canContinueStory = true
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextMessageTableViewCellID", for: indexPath) as! TextMessageTableViewCell
            
            cell.messageLabel.text = message.text
            
            switch message {
            case is NarrationMessage:
                cell.config = NarrationMessageConfig()
            case is UserConversationMessage:
                cell.config = UserMessageConfig()
            default:
                cell.config = CompyMessageConfig()
            }
            
            return cell
        }
        
        if var message = messages[index] as? SingleChoiceMessage {
            canContinueStory = false
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "SingleChoiceMessageTableViewCellID", for: indexPath) as! SingleChoiceMessageTableViewCell
            
            cell.configure(with: message) { [weak self] selectedAnswer in
                message.selectedAnswer = selectedAnswer
                self?.messages[index] = message
                let nextMessage: TextMessage = message.checkAnswer(selectedAnswer)
                    ? message.trueResponse
                    : message.falseResponse
                self?.messages.insert(nextMessage, at: index + 1)
                self?.showNextMessage()
            }
            
            return cell
        }
        
        if var message = messages[index] as? ReorderMessage {
            canContinueStory = false
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReorderMessageTableViewCellID", for: indexPath) as! ReorderMessageTableViewCell
            
            cell.configure(with: message) { [weak self] selectedAnswer in
                message.selectedAnswer = selectedAnswer
                self?.messages[index] = message
                let nextMessage: TextMessage = message.checkAnswer(selectedAnswer)
                    ? message.trueResponse
                    : message.falseResponse
                self?.messages.insert(nextMessage, at: index + 1)
                self?.showNextMessage()
            }
            
            return cell
        }
        
        if var message = messages[index] as? MultiSelectMessage {
            canContinueStory = false
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "MultiSelectMessageTableViewCellID", for: indexPath) as! MultiSelectMessageTableViewCell
            
            cell.configure(with: message) { [weak self] selectedAnswer in
                message.selectedAnswer = selectedAnswer
                self?.messages[index] = message
                let nextMessage: TextMessage = message.checkAnswer(selectedAnswer)
                    ? message.trueResponse
                    : message.falseResponse
                self?.messages.insert(nextMessage, at: index + 1)
                self?.showNextMessage()
            }
            
            return cell
        }
        
        if var message = messages[index] as? ReorderMessage {
            canContinueStory = false
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReorderMessageTableViewCellID", for: indexPath) as! ReorderMessageTableViewCell
            
            cell.configure(with: message) { [weak self] selectedAnswer in
                message.selectedAnswer = selectedAnswer
                self?.messages[index] = message
                let nextMessage: TextMessage = message.checkAnswer(selectedAnswer)
                    ? message.trueResponse
                    : message.falseResponse
                self?.messages.insert(nextMessage, at: index + 1)
                self?.showNextMessage()
            }
            
            return cell
        }
        
        return UITableViewCell()
    }
    
}
