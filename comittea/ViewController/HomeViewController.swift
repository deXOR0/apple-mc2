//
//  HomeViewController.swift
//  comittea
//
//  Created by Balqis on 18/06/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var stories: [HomeCollection] = []

    @IBOutlet weak var homeCollView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stories = [HomeCollection(title: "The Secretary", image: "book"), HomeCollection(title: "Movie Night", image: "movie"), HomeCollection(title: "Supermarket", image: "supermarket")]
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollID", for: indexPath) as? HomeCollectionViewCell)!
        cell.setup(story: stories[indexPath.row])
            return cell
    }
    


}
