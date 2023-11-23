//
//  BOJ_1654.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 11/24/23.
//

let firstLine = readLine()!.split(separator: " ").map { Int(String($0))! }
let (K, N) = (firstLine[0], firstLine[1])

var cables: [Int] = []
for _ in 0..<K {
    cables.append(Int(readLine()!)!)
}

var min = 1
var max = cables.max()!
var result = 0

while min <= max {
    let length = (min + max) / 2
    let count = cables.map({ $0 / length }).reduce(0, +)
    
    if count >= N {
        result = length
        min = length + 1
    } else {
        max = length - 1
    }
}

print(result)

