//
//  BOJ_1541+.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/02.
//

let numbers = readLine()!
    .split(separator: "-")
    .map {
        $0.split(separator: "+")
            .map { Int(String($0))! }
            .reduce(0, +)
    }

print(numbers[0] + numbers.reduce(numbers[0], -))
