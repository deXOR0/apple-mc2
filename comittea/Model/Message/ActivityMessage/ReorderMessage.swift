//
//  ReorderMessage.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 16/06/22.
//

import Foundation

struct ReorderMessage: ActivityMessage {
    
    typealias Answer = [String]
    
    var prompt: String
    
    var options: [String]
    
    var answer: [String]
    
    var trueResponse: CompyTrueMessage
    
    var falseResponse: CompyFalseMessage
    
    init(_ prompt: String, _ options: [String], _ answer: [String], _ trueResponse: CompyTrueMessage, _ falseResponse: CompyFalseMessage) {
        self.prompt = prompt
        self.options = options
        self.answer = answer
        self.trueResponse = trueResponse
        self.falseResponse = falseResponse
    }
    
    /**
     * Method to check whether the user's answer is correct or not
     * @param selectedAnswer
     *     The user's answer
     * @return
     *     Boolean value, true if the answer's correct, false if incorrect
     */
    func checkAnswer(_ selectedAnswer: [String]) -> Bool {
        return selectedAnswer == self.answer
    }
    
}
