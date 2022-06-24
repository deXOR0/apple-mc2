//
//  T10-36_Story Intermezzo.swift
//  comittea
//
//  Created by Dennis Anthony on 17/06/22.
//

import UIKit

class T10_36_Story_Intermezzo: UIViewController {
    
    var chapter: Chapter = Chapter("", "", [Message]())
    var storyTitle = ""
    
    @IBOutlet weak var Intermezzo_Thumbnail: UIImageView!
    @IBOutlet weak var Btn_NextChapter: UIButton! {
        didSet{
            Btn_NextChapter.layer.cornerRadius = 23
            Btn_NextChapter.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var Intermezzo_Message: UILabel!
    
    
    @IBAction func gotoHomeBtn(_ sender: Any) {
        performSegue(withIdentifier: "unwindFromIntermezzo", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Intermezzo_Thumbnail.image = UIImage(named: "Intermezzo_Calender")
        Intermezzo_Message.text = "Congratulations, you have completed the \(chapter.title) stage"
        
    }
    
    @IBAction func Btn_NextChapter(_ sender: Any) {
        
    }
    
}
