//
//  BOJ_2839.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/27.
//

let N = Int(readLine()!)!

var result = N
for fiveCount in stride(from: N / 5, through: 0, by: -1) {
    let remainingWeight = N - 5 * fiveCount
    if remainingWeight % 3 == 0 {
        let count = fiveCount + (remainingWeight / 3)
        result = min(result, count)
    }
}

if result == N {
    print(-1)
} else {
    print(result)
}
