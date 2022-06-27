//
//  OnboardingCollectionViewCell.swift
//  comittea
//
//  Created by Balqis on 16/06/22.
//

import UIKit
import Lottie

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var slideAnimation: AnimationView!
    @IBOutlet weak var slideImage: UIImageView!
    @IBOutlet weak var slideTitle: UILabel!
    @IBOutlet weak var slideDesc: UITextView!
    
    func setup(slide: OnboardingSlide) {
        let animation = Animation.named(slide.animationName)
        slideAnimation.animation = animation
        slideAnimation.loopMode = .loop
        if !slideAnimation.isAnimationPlaying {
            slideAnimation.play()
        }
        
        slideTitle.text = slide.title
        slideDesc.text = slide.description
    }
}
