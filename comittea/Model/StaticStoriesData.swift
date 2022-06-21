//
//  StaticStoriesData.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 17/06/22.
//

import Foundation

class StaticStoriesData {
//    static var stories: [Story] = [
//        Story("Judul Story", "Intro Story", "Logo Story", "Background Story", [
//            Chapter("Judul Story", "Logo Story", [
//                NarrationMessage("Narration Message"),
//            ])
//        ])
//    ]
    
//    Dummy Data
    static var stories: [Story] = [
        Story("The Secretary", "Intro", "book", "", [
            Chapter("Chapter 1", "chapter1", [Message]()),
            Chapter("Chapter 2", "chapter2", [Message]()),
            Chapter("Chapter 3", "chapter3", [Message]())
        ]),
        Story("Movie Night", "Intro", "movie", "", [
            Chapter("Chapter 1", "chapter1", [Message]()),
            Chapter("Chapter 2", "chapter2", [Message]()),
            Chapter("Chapter 3", "chapter3", [Message]())
        ]),
        Story("Supermarket", "Intro", "supermarket", "", [
            Chapter("Chapter 1", "chapter1", [Message]()),
            Chapter("Chapter 2", "chapter2", [Message]()),
            Chapter("Chapter 3", "chapter3", [Message]())
        ])
    ]
    
    static func findStory(title: String) -> Story {
        return  stories.first(where: {$0.title == title}) ?? Story("", "", "", "", [Chapter]())
    }
}
