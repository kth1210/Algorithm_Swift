//
//  BOJ_10815.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/29.
//

let N = Int(readLine()!)!

var cards: [String:Bool] = [:]
readLine()!
    .split(separator: " ")
    .map { String($0) }
    .forEach { cards[$0] = true }

let M = Int(readLine()!)!
let result = readLine()!
    .split(separator: " ")
    .map { String($0) }
    .map { cards[$0] == nil ? "0" : "1" }
    .joined(separator: " ")

print(result)
