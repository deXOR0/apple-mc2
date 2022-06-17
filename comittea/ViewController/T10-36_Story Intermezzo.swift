//
//  T10-36_Story Intermezzo.swift
//  comittea
//
//  Created by Dennis Anthony on 17/06/22.
//

import UIKit

class T10_36_Story_Intermezzo: UIViewController {

    @IBOutlet weak var Intermezzo_Thumbnail: UIImageView!
    @IBOutlet weak var Btn_NextChapter: UIButton! {
        didSet{
            Btn_NextChapter.layer.cornerRadius = 23
            Btn_NextChapter.layer.masksToBounds = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Intermezzo_Thumbnail.image = UIImage(named: "Intermezzo_Calender")
        
    }
    
    @IBAction func Btn_NextChapter(_ sender: Any) {
        
    }
    
}
