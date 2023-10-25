//
//  BOJ_2231.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/25.
//

func decomposition(num: Int) -> Int {
    var sum = num
    var temp = num
    while temp > 0 {
        sum += temp % 10
        temp /= 10
    }
    return sum
}

let N = Int(readLine()!)!

var result = 0
for num in 1..<N {
    let decompositionSum = decomposition(num: num)
    if decompositionSum == N {
        result = num
        break
    }
}

print(result)
