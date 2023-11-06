//
//  BOJ_11399.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/06.
//

let N = Int(readLine()!)!

let P = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }
    .sorted(by: >)

var result = 0
for i in 0..<P.count {
    result += P[i..<P.count].reduce(0, +)
}

print(result)
