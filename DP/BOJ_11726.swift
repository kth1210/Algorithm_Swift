//
//  BOJ_11726.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/11.
//

let n = Int(readLine()!)!

var dp: [Int] = Array(repeating: 0, count: n + 1)

if n == 1 || n == 2 {
    print(n)
} else {
    dp[1] = 1
    dp[2] = 2

    for idx in 3...n {
        dp[idx] = (dp[idx - 2] + dp[idx - 1]) % 10007
    }
    
    print(dp[n])
}
