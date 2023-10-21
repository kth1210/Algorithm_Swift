//
//  BOJ_1000.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/21.
//

let result = readLine()!
    .split(separator: " ")
    .map { Int($0)! }
    .reduce(0, +)

print(result)
