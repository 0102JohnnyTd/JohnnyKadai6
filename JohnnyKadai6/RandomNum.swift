//
//  RandomNum.swift
//  JohnnyKadai6
//
//  Created by Johnny Toda on 2022/03/29.
//

import Foundation

final class RandomNum {
    private (set) var num = 0

    func generateRandomNum() -> Int {
        num = Int.random(in: 1...100)
        return num
    }
}
