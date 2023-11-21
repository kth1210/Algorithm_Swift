//
//  BOJ_2805.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 11/21/23.
//

let firstLine: [Int] = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }

let (N, M) = (firstLine[0], firstLine[1])

let trees: [Int] = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }

var min: Int = 1
var max: Int = trees.max()!
var result: Int = 0

while min <= max {
    let height = (min + max) / 2
    
    let sum = trees
        .map({ $0 > height ? $0 - height : 0 })
        .reduce(0, +)
    
    if sum >= M {
        result = height
        min = height + 1
    } else {
        max = height - 1
    }
}

print(result)
