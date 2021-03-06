//
//  Story.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 16/06/22.
//

import Foundation
import UIKit

struct Story {
    
    var title: String
    var intro: String
    var logo: String
    var background: String
    var chapters: [Chapter]
    
    init(_ title: String, _ intro: String, _ logo: String, _ background: String,  _ chapters: [Chapter]) {
        self.title = title
        self.intro = intro
        self.logo = logo
        self.background = background
        self.chapters = chapters
    }
}
