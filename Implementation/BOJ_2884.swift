//
//  BOJ_2884.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/22.
//

let input = readLine()!
    .split(separator: " ")
    .map { Int($0)! }

let H = input[0]
let M = input[1]

var changedMinute = H * 60 + M - 45

if changedMinute < 0 {
    changedMinute = 24 * 60 + changedMinute
}

print("\(changedMinute / 60) \(changedMinute % 60)")
