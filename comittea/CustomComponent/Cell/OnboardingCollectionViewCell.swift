//
//  OnboardingCollectionViewCell.swift
//  comittea
//
//  Created by Balqis on 16/06/22.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var slideImage: UIImageView!
    @IBOutlet weak var slideTitle: UILabel!
    @IBOutlet weak var slideDesc: UITextView!
    
    func setup(slide: OnboardingSlide) {
        slideImage.image = UIImage(named: slide.image)
        slideTitle.text = slide.title
        slideDesc.text = slide.description
    }
}
