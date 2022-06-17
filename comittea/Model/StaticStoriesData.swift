//
//  StaticStoriesData.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 17/06/22.
//

import Foundation

class StaticStoriesData {
    static var stories: [Story] = [
        Story("Judul Story", "Intro Story", "Logo Story", [
            Chapter("Judul Story", "Logo Story", [
                NarrationMessage("Narration Message"),
            ])
        ])
    ]
}
