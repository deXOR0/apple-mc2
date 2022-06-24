//
//  T10-35_Story Intro.swift
//  comittea
//
//  Created by Dennis Anthony on 19/06/22.
//

import UIKit

class T10_35_Story_Intro: UIViewController {
    
    var storyTitle: String = ""
    var story: Story = Story("", "", "", "", [Chapter]())
    var user: User = User()
    var selectedChapter: Chapter = Chapter("", "", [Message]())
    
    @IBOutlet weak var storyIntroLabel: UILabel!
    @IBOutlet weak var storyTitleLabel: UILabel!
    @IBOutlet weak var Story_Thumbnail: UIImageView!
    @IBOutlet weak var ChapTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user.loadSavedUserData()
        loadStoryData()
        
        //        Dummy Data
        user.name = "Awesa"
        user.progress["The Secretary"]!["Find Documents"] = User.State.complete
        user.progress["The Secretary"]!["Must Go Faster!"] = User.State.unlocked
        user.progress["Movie Night"]!["Planning Ahead"] = User.State.complete
        user.progress["Movie Night"]!["Buying Tickets"] = User.State.complete
        //        End of Dummy Data
        
        Story_Thumbnail.image = UIImage(named: self.story.background)
        storyTitleLabel.text = self.story.title
        storyIntroLabel.text = self.story.intro

        self.ChapTableView.dataSource = self
        self.ChapTableView.delegate = self
        self.registerTableViewCells()
    }
    
    func loadStoryData() {
        self.story = StaticStoriesData.findStory(title: storyTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoMessage" {
            let destinationVC = segue.destination as? MessagingViewController
            destinationVC?.storyTitle = self.storyTitle
            destinationVC?.chapter = self.selectedChapter
        }
    }
    
    @IBAction func unwindtoHome( _ seg: UIStoryboardSegue) {
    }
    
}


extension T10_35_Story_Intro: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.story.chapters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ChapterCellID") as? ChapterCell {
            
            let chapterProgress: User.State = self.user.progress[self.storyTitle]![self.story.chapters[indexPath.row].title]!
            
            if chapterProgress == User.State.unlocked {
                cell.Chap_Thumbnail.image = UIImage(named: self.story.chapters[indexPath.row].logo)
            } else if chapterProgress == User.State.locked {
                cell.Chap_Thumbnail.image = UIImage(named: "\(self.story.chapters[indexPath.row].logo)_Locked")
            } else {
                cell.Chap_Thumbnail.image = UIImage(named: "\(self.story.chapters[indexPath.row].logo)_Done")
            }
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chapterProgress: User.State = self.user.progress[self.storyTitle]![self.story.chapters[indexPath.row].title]!
            if chapterProgress != User.State.locked {
            self.selectedChapter = self.story.chapters[indexPath.row]
            performSegue(withIdentifier: "gotoMessage", sender: self)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    private func registerTableViewCells() {
        let textFieldCell = UINib(nibName: "ChapterCell",
                                  bundle: nil)
        self.ChapTableView.register(textFieldCell,
                                forCellReuseIdentifier: "ChapterCellID")
    }
    
}
