//
//  BOJ_1541.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/02.
//

import Foundation

let input = readLine()!
var numbers = input
    .components(separatedBy: ["-", "+"])
    .map { Int($0)! }
var operators = input
    .filter { !$0.isNumber }
    .map { String($0) }

var result = numbers.removeFirst()
var numberStack: [Int] = []
for idx in 0..<numbers.count {
    if operators[idx] == "-" {
        numberStack.append(numbers[idx])
    } else if operators[idx] == "+" && numberStack.isEmpty {
        result += numbers[idx]
    } else {
        numberStack.append(numbers[idx])
    }
}

if !numberStack.isEmpty {
    result -= numberStack.reduce(0, +)
}

print(result)
