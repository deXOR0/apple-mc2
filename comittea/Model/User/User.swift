//
//  User.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 16/06/22.
//

import Foundation
import UIKit

class User: Codable {
    
    var name: String = ""
    var isNewUser: Bool = true
    var progress: [String:[String:State]] = [String:[String:State]]()
    let userDefaults: UserDefaults = UserDefaults.standard
    let USER_KEY = "user_key"
    
    enum State: String, Codable {
        case locked
        case unlocked
        case complete
    }
    
    init() {
        StaticStoriesData.stories.forEach { story in // Initialized chapters progress dynamically
            progress[story.title] = [String:State]()
            for (index, chapter) in story.chapters.enumerated() {
                if index == 0 { // Chapter 1 is always unlocked
                    progress[story.title]![chapter.title] = .unlocked
                }
                else {
                    progress[story.title]![chapter.title] = .locked
                }
            }
        }
    }
    
    func save() -> Bool {
        do {
            let user = self
            let encoder = JSONEncoder()
            let data = try encoder.encode(user)
            self.userDefaults.set(data, forKey: self.USER_KEY)
            return true
        }
        catch {

        }
        return false
    }
    
    func reset() {
        self.userDefaults.removeObject(forKey: self.USER_KEY)
    }
    
    func loadSavedUserData() -> Bool {
        if let data = self.userDefaults.data(forKey: self.USER_KEY) {
            do {
                let decoder = JSONDecoder()
                let user = try decoder.decode(User.self, from: data)
                self.name = user.name
                self.isNewUser = false
                self.progress = user.progress
                
                return save()
            }
            catch {
                
            }
        }
        return false
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case isNewUser
        case progress
    }
    
}
