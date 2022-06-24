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
            """, "Story_Logo_Movie", "Story_Background_Movie", [
            Chapter("Planning Ahead", "Chapter_Planning Ahead","Buying Tickets", [Message]()),
            Chapter("Buying Tickets", "Chapter_Buying Tickets","Seating Placement", [Message]()),
            Chapter("Seating Placement", "Chapter_Seating Placement","", [Message]())
        ]),
        Story("The Secretary", "The mayor is a very busy man, he has a lot of responsibilities. As time goes on, his workload seems to keep increasing. He decided that he needed help and hired you as his secretary. As a secretary, you're responsible for managing the mayor's schedule, setting up meetings, retrieving documents, etc.", "Story_Logo_Secretary", "Story_Background_The Secretary", [
            Chapter("Find Documents", "Chapter_Documents","Must Go Faster!" , [Message]()),
            Chapter("Must Go Faster!", "Chapter_Faster","Sort Problems", [Message]()),
            Chapter("Sort Problems", "Chapter_Problems","", [Message]())
        ]),
        Story("Supermarket", "", "Story_Logo_Supermarket", "Story_Background_Supermarket", [
            Chapter("Monthly Groceries", "Chapter_Monthly","Find the Banana", [Message]()),
            Chapter("Find the Banana", "Chapter_Banana","Pay Lane", [Message]()),
            Chapter("Pay Lane", "Chapter_PayLine","", [Message]())
        ])
    ]
    
    static func findStory(title: String) -> Story {
        return stories.first(where: {$0.title == title}) ?? Story("", "", "", "", [Chapter]())
    }
    
    static func findChapter(story: Story, chapterTitle: String) -> Chapter {
        return story.chapters.first(where: {
            $0.title == chapterTitle
        }) ?? Chapter("", "", "", [Message]())
    }
}
