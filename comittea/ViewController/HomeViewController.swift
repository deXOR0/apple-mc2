//
//  HomeViewController.swift
//  comittea
//
//  Created by Balqis on 18/06/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var stories: [HomeCollection] = []
    var user: User = User()
    var selectedStoryTitle: String = ""

    @IBOutlet weak var userGreetingLabel: UILabel!
    @IBOutlet weak var homeCollView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Dummy Data
        user.progress["The Secretary"]!["Find Documents"] = User.State.complete
        user.progress["Movie Night"]!["Planning Ahead"] = User.State.complete
        user.progress["Movie Night"]!["Buying Tickets"] = User.State.complete
//        End of Dummy Data
        
        user.loadSavedUserData()
        
        StaticStoriesData.stories.forEach { story in
            stories.append(HomeCollection(title: story.title, image: story.logo, progress: calculateStoryProgress(chapters: user.progress[story.title]!)))
        }
        
        userGreetingLabel.text = "Hey, \(user.name)"
    }
    
    func calculateStoryProgress(chapters: [String:User.State]) -> Float {
        var chapterDoneCount: Int = 0
        chapters.forEach { chapter in
            if (chapter.value == User.State.complete) {
                chapterDoneCount += 1
            }
        }
        return  Float(chapterDoneCount) / Float(chapters.count)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoStoryIntro" {
            let nav = segue.destination as? UINavigationController
            let destinationVC = nav?.topViewController as? T10_35_Story_Intro
            destinationVC?.storyTitle = self.selectedStoryTitle
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollID", for: indexPath) as? HomeCollectionViewCell)!
        cell.setup(story: stories[indexPath.row])
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.selectedStoryTitle = self.stories[indexPath.row].title
        performSegue(withIdentifier: "gotoStoryIntro", sender: self)
    }


}
