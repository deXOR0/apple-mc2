//
//  SingleChoiceHiLoMessage.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 28/06/22.
//

import Foundation

struct SingleChoiceHiLoMessage: ActivityMessage {
    
    typealias Answer = String
    
    var prompt: String
    
    var options: [String]
    
    var answer: String
    
    var selectedAnswer: String?
    
    var trueResponse: CompyTrueMessage
    
    var falseResponse: CompyFalseMessage = CompyFalseMessage("")
    
    var falseResponses: [AnswerState:String]
    
    var repeating: Bool
    
    enum AnswerState: String {
        case higher
        case lower
    }
    
    enum Comparator: String {
        case lesser
        case greater
    }
    
    init(_ prompt: String, _ options: [String], _ answer: String, _ trueResponse: CompyTrueMessage, _ falseResponses: [AnswerState:String], _ repeating: Bool = true) {
        self.prompt = prompt
        self.options = options
        self.answer = answer
        self.trueResponse = trueResponse
        self.falseResponses = falseResponses
        self.repeating = repeating
    }
    
    /**
     * Method to check whether the user's answer is correct or not
     * @param selectedAnswer
     *     The user's answer
     * @return
     *     Boolean value, true if the answer's correct, false if incorrect
     */
    func checkAnswer(_ selectedAnswer: String) -> Bool {
        return selectedAnswer == self.answer
    }
    
    func compare(_ first: String, _ second: String, _ comparator: Comparator) -> Bool {
        if comparator == .lesser {
            return Int(first) ?? 1 < Int(second) ?? 0
        }
        else {
            return Int(first) ?? 0 > Int(second) ?? 0
        }
    }
    
    func buildNextMessage() -> SingleChoiceHiLoMessage {
        let state: AnswerState = compare(self.selectedAnswer ?? "0", self.answer, .lesser) ? .higher : .lower
        let options: [String] = self.options.filter {
            state == .higher ? compare($0, self.selectedAnswer ?? "0", .greater) : compare($0, self.selectedAnswer ?? "0", .lesser)
        }
        return SingleChoiceHiLoMessage(falseResponses[state]!, options, self.answer, self.trueResponse, self.falseResponses, true)
    }
    
}
