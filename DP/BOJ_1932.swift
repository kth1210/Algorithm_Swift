//
//  BOJ_1932.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/09.
//

let n = Int(readLine()!)!

var dp: [Int] = Array(repeating: 0, count: n + 1)
dp[1] = Int(readLine()!)!

for _ in 0..<n-1 {
    var temp: [Int] = Array(repeating: 0, count: n + 1)
    let input = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
    
    for idx in 0..<input.count {
        temp[idx + 1] = max(input[idx] + dp[idx], input[idx] + dp[idx + 1])
    }
    
    dp = temp
}

print(dp.max()!)
