//
//  +UIStackView.swift
//  comittea
//
//  Created by Mohammad Alfarisi on 26/06/22.
//

import Foundation
import UIKit

extension UIStackView {
    
    func addArrangedSubviewsIfEmpty(_ views: [UIView]) {
        guard self.arrangedSubviews.isEmpty else { return }
        
        views.forEach(self.addArrangedSubview)
    }
    
    func removeAllArrangedSubviews() {
        self.arrangedSubviews.forEach { view in
            self.removeArrangedSubview(view)
            view.removeFromSuperview()
        }
    }
    
}
