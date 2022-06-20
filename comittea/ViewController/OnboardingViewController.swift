//
//  OnboardingViewController.swift
//  comittea
//
//  Created by Balqis on 16/06/22.
//

import UIKit

class OnboardingViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var onboardingCollView: UICollectionView!
    @IBOutlet weak var nextButton: UIButton! {
        didSet {
            nextButton.layer.cornerRadius = 20
            nextButton.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide] = []
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slides = [
            OnboardingSlide(title: "Hello", description: "I’m Compy! I will help you to improve your logical thinking, and makes you understand the basic concept of programming easier. ", image: "artboard"),
            OnboardingSlide(title: "Understand With Story", description: "With relatable slice of life story, we will learn computational thinking in an interactive way and you also contributed to the story!", image: "artboard2")
        ]
        pageControl.numberOfPages = slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCellID", for: indexPath) as? OnboardingCollectionViewCell)!
        cell.setup(slide: slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl?.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
    
    @IBAction func skipButtonClicked(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(identifier: "UserCallID") as! UserCallViewController
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }

    
    @IBAction func nextButtonClicked(_ sender: Any) {
        if currentPage == slides.count - 1 {
            let controller = storyboard?.instantiateViewController(identifier: "UserCallID") as! UserCallViewController
            controller.modalPresentationStyle = .fullScreen
//            controller.modalTransitionStyle = .flipHorizontal
            present(controller, animated: true, completion: nil)
        } else {
            currentPage += 1
            let rect = onboardingCollView.layoutAttributesForItem(at:IndexPath(row: currentPage, section: 0))?.frame
                        onboardingCollView.scrollRectToVisible(rect!, animated: true)
        }
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}
