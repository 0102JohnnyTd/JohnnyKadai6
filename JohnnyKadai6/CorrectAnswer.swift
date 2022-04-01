//
//  RandomNum.swift
//  JohnnyKadai6
//
//  Created by Johnny Toda on 2022/03/29.
//

import Foundation

final class CorrectAnswer {
    private (set) var value = CorrectAnswerGenerator().generate()

    func regenerate() -> Int {
        value = CorrectAnswerGenerator().generate()
        return value
    }
}

struct CorrectAnswerGenerator {
    func generate() -> Int {
        Int.random(in: 1...100)
    }
}
