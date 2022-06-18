//
//  ActivityMessage.swift
//  comittea
//
//  Created by Atyanta Awesa Pambharu on 16/06/22.
//

import Foundation

protocol ActivityMessage: Message {
    associatedtype Answer
    
    var prompt: String { get }
    var options: [String] { get }
    var answer: Answer { get }
    var trueResponse: CompyTrueMessage { get }
    var falseResponse: CompyFalseMessage { get }
    var repeating: Bool { get }
    
    func checkAnswer(_ selectedAnswer: Answer) -> Bool
}
