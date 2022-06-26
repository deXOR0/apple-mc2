//
//  Chapter.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 16/06/22.
//

import Foundation
import UIKit

struct Chapter {
    
    var title: String
    var logo: String
    var nextChapterTitle: String
    var messages: [Message]
    
    init(_ title: String, _ logo: String, _ nextChapterTitle: String, _ messages: [Message]) {
        self.title = title
        self.logo = logo
        self.nextChapterTitle = nextChapterTitle
        self.messages = messages
    }
}
