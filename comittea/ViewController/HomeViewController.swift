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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        user.loadSavedUserData()
        
        stories.removeAll()
        StaticStoriesData.stories.forEach { story in
            stories.append(HomeCollection(title: story.title, image: story.logo, progress: calculateStoryProgress(chapters: user.progress[story.title]!)))
        }
        
        userGreetingLabel.text = "Hey, \(user.name)"
        
        DispatchQueue.main.async {
            self.homeCollView.reloadData()
        }
    }
    
    func calculateStoryProgress(chapters: [String:User.State]) -> Float {
        var chapterDoneCount: Int = 0
        chapters.forEach { chapter in
            if (chapter.value == User.State.complete) {
                chapterDoneCount += 1
            }
        }
        return Float(chapterDoneCount) / Float(chapters.count)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoStoryIntro" {
            let destinationVC = segue.destination as? T10_35_Story_Intro
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
