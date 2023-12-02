//
//  BOJ_23630.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 12/2/23.
//

func calculateBit(num: Int, result: inout [Int]) {
    var temp = num
    var idx = 0
    
    while temp > 0 {
        result[idx] += temp % 2
        temp /= 2
        idx += 1
    }
}

let N = Int(readLine()!)!
let sequence = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = Array(repeating: 0, count: 20)

for number in sequence {
    calculateBit(num: number, result: &result)
}

print(result.max()!)
