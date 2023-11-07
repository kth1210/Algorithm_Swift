//
//  BOJ_1463.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/07.
//

/*
 1 - 0
 2 - 1
 3 - 1
 4 -> 2 -> 1 - 2
 5 -> 4 -> 2 -> 1 - 3
 6 -> 2 -> 1 - 2
 7 -> 6 -> 2 -> 1 - 3
 8 -> 4 -> 2 -> 1 - 3
 9 -> 3 -> 1 - 2
 10 -> 5 -> 4 -> 2 -> 1 - 4
 */

let N = Int(readLine()!)!
var count: Int = 0

if N == 1 {
    count = 0
} else if N == 2 {
    count = 1
} else if N == 3 {
    count = 1
} else {
    var dp: [Int] = Array(repeating: 0, count: N + 1)
    dp[1] = 0
    dp[2] = 1
    dp[3] = 1
    
    for idx in 4...N {
        dp[idx] = dp[idx - 1] + 1
        
        if idx % 3 == 0 {
            dp[idx] = min(dp[idx], dp[idx / 3] + 1)
        }
        
        if idx % 2 == 0 {
            dp[idx] = min(dp[idx], dp[idx / 2] + 1)
        }
    }
    
    count = dp[N]
}

print(count)

