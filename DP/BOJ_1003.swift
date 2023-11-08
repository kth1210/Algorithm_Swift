//
//  BOJ_1003.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/08.
//

typealias Count = (Int, Int)

func calculateCount(number: Int) -> Count {
    if number == 0 { return (1, 0) }
    if number == 1 { return (0, 1) }
    
    var dp: [Count] = Array(repeating: (0, 0), count: number + 1)
    dp[0] = (1, 0)
    dp[1] = (0, 1)
    
    for idx in 2...number {
        dp[idx] = (dp[idx - 2].0 + dp[idx - 1].0, dp[idx - 2].1 + dp[idx - 1].1)
    }
    
    return dp[number]
}

let T: Int = Int(readLine()!)!

for _ in 0..<T {
    let N: Int = Int(readLine()!)!
    let count = calculateCount(number: N)
    
    print("\(count.0) \(count.1)")
}
