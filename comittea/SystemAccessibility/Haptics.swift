//
//  Haptics.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 05/07/22.
//

import Foundation
import UIKit
import CoreHaptics

class Haptics {
    static func vibrate(_ type: UINotificationFeedbackGenerator.FeedbackType) {
        if CHHapticEngine.capabilitiesForHardware().supportsHaptics {
            DispatchQueue.main.async {
                let generator = UINotificationFeedbackGenerator()
                generator.prepare()
                generator.notificationOccurred(type)
            }
        }
        else {
            print("Haptic Unsupported")
        }
    }
}
