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
        Story("Movie Night", """
              What a boring weekend Benny is having right now.
              Just sitting and doing nothing. Suddenly it hits him.
              He could go to the movies with his friends.
            """, "book", "Story_Background_Movie", [
            Chapter("Planning Ahead", "Chap_Planning Ahead", [Message]()),
            Chapter("Buying Tickets", "Chap_Buying Tickets", [Message]()),
            Chapter("Seating Placement", "Chap_Seating Placement", [Message]())
        ]),
        Story("The Secretary", "The mayor is a very busy man, he has a lot of responsibilities. As time goes on, his workload seems to keep increasing. He decided that he needed help and hired you as his secretary. As a secretary, you're responsible for managing the mayor's schedule, setting up meetings, retrieving documents, etc.", "movie", "Story_Background_The Secretary", [
            Chapter("Find Documents", "Chap_Documents", [Message]()),
            Chapter("Must Go Faster!", "Chap_Faster", [Message]()),
            Chapter("Sort Problems", "Chap_Problems", [Message]())
        ]),
        Story("Supermarket", "", "supermarket", "Story_Background_Supermarket", [
            Chapter("Monthly Groceries", "Chapter_Monthly", [Message]()),
            Chapter("Find the Banana", "Chapter_Banana", [Message]()),
            Chapter("Pay Lane", "Chapter_PayLine", [Message]())
        ])
    ]
    
    static func findStory(title: String) -> Story {
        return stories.first(where: {$0.title == title}) ?? Story("", "", "", "", [Chapter]())
    }
}
