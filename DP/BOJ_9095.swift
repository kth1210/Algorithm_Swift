//
//  BOJ_9095.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/09.
//

let T = Int(readLine()!)!

var dp: [Int] = Array(repeating: 0, count: 11)
dp[1] = 1
dp[2] = 2
dp[3] = 4

for idx in 4..<11 {
    dp[idx] = dp[idx-3] + dp[idx-2] + dp[idx-1]
}

for _ in 0..<T {
    let n = Int(readLine()!)!
    print(dp[n])
}
