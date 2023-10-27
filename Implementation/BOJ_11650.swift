//
//  BOJ_11650.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/27.
//

typealias coordinate = (x: Int, y: Int)

let N = Int(readLine()!)!

var coordinates: [coordinate] = []
for _ in 0..<N {
    let input = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
    
    coordinates.append((input[0], input[1]))
}

coordinates
    .sorted(by: { $0.y < $1.y })
    .sorted(by: { $0.x < $1.x })
    .forEach { print("\($0.x) \($0.y)") }
