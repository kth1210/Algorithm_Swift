//
//  BOJ_13305.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/03.
//

let N = Int(readLine()!)!
let roads = readLine()!
    .split(separator: " ")
    .map { Int(String($0))!}
let cityCosts = readLine()!
    .split(separator: " ")
    .map { Int(String($0))!}

var result = 0
var minCost = cityCosts[0]

for now in 0..<N-1 {
    minCost = min(minCost, cityCosts[now])
    result += minCost * roads[now]
}

print(result)
