//
//  BOJ_1546.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/23.
//

let N = Double(readLine()!)!
let currentPoints = readLine()!
    .split(separator: " ")
    .map { Double(String($0))! }
let maxPoint = currentPoints.max()!

let totalResult = currentPoints
    .map { $0 / maxPoint * 100 }
    .reduce(0, +)

print(totalResult / N)
