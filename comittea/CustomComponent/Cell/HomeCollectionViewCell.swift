//
//  HomeCollectionViewCell.swift
//  comittea
//
//  Created by Balqis on 18/06/22.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var backgroundWhite: UIImageView! {
        didSet {
            backgroundWhite.layer.cornerRadius = 20
            backgroundWhite.layer.shadowColor = UIColor.gray.cgColor
            backgroundWhite.layer.shadowRadius = 3.0
            backgroundWhite.layer.shadowOpacity = 0.5
            backgroundWhite.layer.shadowOffset = CGSize(width: 1, height: 1)
            backgroundWhite.layer.masksToBounds = false
        }
    }
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var title: UILabel!
    
    func setup(story: HomeCollection) {
        image.image = UIImage(named: story.image)
        title.text = story.title
    }
}
