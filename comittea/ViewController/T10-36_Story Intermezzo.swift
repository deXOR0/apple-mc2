//
//  T10-36_Story Intermezzo.swift
//  comittea
//
//  Created by Dennis Anthony on 17/06/22.
//

import UIKit

class T10_36_Story_Intermezzo: UIViewController {
    
    var chapter: Chapter = Chapter("", "","", [Message]())
    var nextChapter: Chapter = Chapter("", "","", [Message]())
    var storyTitle = ""
    
    @IBOutlet weak var Intermezzo_Thumbnail: UIImageView!
    @IBOutlet weak var Btn_NextChapter: UIButton! {
        didSet{
            Btn_NextChapter.layer.cornerRadius = 23
            Btn_NextChapter.layer.masksToBounds = true
            if self.chapter.nextChapterTitle == "" {
                Btn_NextChapter.setTitle("Complete Story", for: .normal)
            }
        }
    }
    @IBOutlet weak var Intermezzo_Message: UILabel!
    
    
    @IBAction func gotoHomeBtn(_ sender: Any) {
        performSegue(withIdentifier: "unwindFromIntermezzo", sender: self)
    }
    
    @IBAction func nextChapterBtnTapped(_ sender: Any) {
        if self.chapter.nextChapterTitle != "" {
            self.nextChapter = StaticStoriesData.findChapter(story: StaticStoriesData.findStory(title: self.storyTitle), chapterTitle: self.chapter.nextChapterTitle)
            performSegue(withIdentifier: "unwindFromIntermezzo2", sender: self)
        } else {
            performSegue(withIdentifier: "unwindFromIntermezzo", sender: self)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveProgress()
        
        Intermezzo_Thumbnail.image = UIImage(named: "Intermezzo_\(chapter.title)")
        Intermezzo_Message.text = "Congratulations, you have completed the \(chapter.title) stage"
        
    }
    
    func saveProgress() {
        var user = User()
        user.loadSavedUserData()
        user.progress[self.storyTitle]![self.chapter.title] = User.State.complete
        if self.chapter.nextChapterTitle != "" {
            if user.progress[self.storyTitle]![self.chapter.nextChapterTitle] != User.State.complete {
                user.progress[self.storyTitle]![self.chapter.nextChapterTitle] = User.State.unlocked
            }
        }
        user.save()
    }
    
}
