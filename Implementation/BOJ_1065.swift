//
//  BOJ_1065.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 12/5/23.
//

let N = Int(readLine()!)!

var count = 0
for num in 1...N {
    let digits = String(num).map { String($0) }.map { Int($0)! }
    
    if digits.count <= 2 {
        count += 1
    } else {
        if (digits[0] - digits[1]) == (digits[1] - digits[2]) {
            count += 1
        }
    }
}

print(count)
