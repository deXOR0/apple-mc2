//
//  MessageUIViewController.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 19/06/22.
//

import UIKit

// TODO: reorder activity UI
// TODO: add popup on back
class MessagingViewController: UIViewController {
    
    @IBOutlet weak var messagingTableView: UITableView!
    var initialPopup: UIAlertController!
    
    var visibleMessages = 0
    
    /// True if user can continue the story by tapping on screen.
    /// Set to false when there is ActivityMessage
    var canContinueStory = true
    
    var userName: String = ""
    var storyTitle: String = ""
    var chapter: Chapter = Chapter("", "","", [Message]())
    var messages: [Message] = [Message]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = chapter.title
        self.messages = chapter.messages
        
        showInitialPopup()
        
        messagingTableView.dataSource = self
        messagingTableView.delegate = self
        messagingTableView.allowsSelection = false
        messagingTableView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onScreenTapped)))
        messagingTableView.register(TextMessageTableViewCell.self, forCellReuseIdentifier: "TextMessageTableViewCellID")
        messagingTableView.register(UINib(nibName: "SingleChoiceMessageTableViewCell", bundle: nil), forCellReuseIdentifier: "SingleChoiceMessageTableViewCellID")
        messagingTableView.register(UINib(nibName: "MultiSelectMessageTableViewCell", bundle: nil), forCellReuseIdentifier: "MultiSelectMessageTableViewCellID")
        messagingTableView.register(UINib(nibName: "ReorderMessageTableViewCell", bundle: nil), forCellReuseIdentifier: "ReorderMessageTableViewCellID")
        
    }
    
    func showNextMessage() {
        if visibleMessages < messages.count {
            let lastIndex = IndexPath(row: visibleMessages, section: 0)
                    
            visibleMessages += 1
        
            DispatchQueue.main.async {
                self.messagingTableView.insertRows(at: [lastIndex], with: .fade)
                self.messagingTableView.scrollToRow(
                    at: lastIndex, at: .bottom, animated: true)
            }
        } else {
            performSegue(withIdentifier: "gotoIntermezzo", sender: self)
        }
    }
    
    func showInitialPopup() {
        initialPopup = UIAlertController(
            title: "Tap the screen to continue the story",
            message: "",
            preferredStyle: .alert)

        self.present(initialPopup, animated: true) {
            let gr = UITapGestureRecognizer(target: self, action: #selector(self.dismissInitialPopup))
            
            self.initialPopup.view.superview?.subviews.first.map {
                view in
                view.isUserInteractionEnabled = true
                view.addGestureRecognizer(gr)
            }
        }
    }
    
    @objc func onScreenTapped(_ sender: UITapGestureRecognizer) {
        guard canContinueStory else { return }
        
        showNextMessage()
    }
    
    @objc func dismissInitialPopup(_ sender: UITapGestureRecognizer){
        initialPopup.dismiss(animated: true)
    }

    @IBAction func skipBtn(_ sender: Any) {
        performSegue(withIdentifier: "gotoIntermezzo", sender: self)
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
