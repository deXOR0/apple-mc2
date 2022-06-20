//
//  UserCallViewController.swift
//  comittea
//
//  Created by Balqis on 17/06/22.
//

import UIKit

class UserCallViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var nextButton: UIButton! {
        didSet {
            nextButton.layer.cornerRadius = 20
            nextButton.layer.masksToBounds = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userTextField.addBottomBorder()
        self.hideKeyboardWhenTappedAround()

    }
    @IBAction func nextToHome(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(identifier: "HomeStoryID") as! HomeViewController
        controller.modalPresentationStyle = .fullScreen
//            controller.modalTransitionStyle = .flipHorizontal
        present(controller, animated: true, completion: nil)
    }
}

extension UITextField {
    func addBottomBorder(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        bottomLine.backgroundColor = UIColor.gray.cgColor
        borderStyle = .none
        layer.addSublayer(bottomLine)
    }
}
