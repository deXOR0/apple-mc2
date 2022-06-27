//
//  StaticStoriesData.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 17/06/22.
//

import Foundation

class StaticStoriesData {
    static var stories: [Story] = [Story]()
    
    static func loadStories() {
        let storiesData: [Storiable] = [
            MovieNight(),
            TheSecretary(),
            Supermarket()
        ]
        storiesData.forEach { storyData in
            stories.append(storyData.story)
        }
    }
    
    static func findStory(title: String) -> Story {
        return stories.first(where: {$0.title == title}) ?? Story("", "", "", "", [Chapter]())
    }
    
    static func findChapter(story: Story, chapterTitle: String) -> Chapter {
        return story.chapters.first(where: {
            $0.title == chapterTitle
        }) ?? Chapter("", "", "", [Message]())
    }
}
