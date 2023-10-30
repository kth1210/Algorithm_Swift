//
//  BOJ_14425.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/30.
//

let input = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }

let (N, M) = (input[0], input[1])

var dictionary: [String:Bool] = [:]
for _ in 0..<N {
    dictionary.updateValue(true, forKey: readLine()!)
}

var result = 0
for _ in 0..<M {
    let find = readLine()!
    if dictionary[find] != nil {
        result += 1
    }
}

print(result)
