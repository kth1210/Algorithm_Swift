//
//  BOJ_10814.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/27.
//

typealias Member = (age: Int, name: String)

let N = Int(readLine()!)!

var members: [Member] = []
for _ in 0..<N {
    let input = readLine()!
        .split(separator: " ")
        .map { String($0) }
    
    members.append((Int(input[0])!, input[1]))
}

members
    .sorted(by: { $0.age < $1.age })
    .forEach { print("\($0.age) \($0.name)") }
