//
//  BOJ_10816.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 11/23/23.
//

let N = Int(readLine()!)!
var numberDictionary: [Int: Int] = [:]
let numbers = readLine()!
    .split(separator: " ")
    .map({ Int(String($0))! })

numbers.forEach {
    if let number = numberDictionary[$0] {
        numberDictionary[$0] = number + 1
    } else {
        numberDictionary[$0] = 1
    }
}

let M = Int(readLine()!)!
var result = ""
readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }
    .forEach {
        result += String(numberDictionary[$0, default: 0]) + " "
    }
