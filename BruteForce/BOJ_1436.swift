//
//  BOJ_1436.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/26.
//

let N = Int(readLine()!)!

var count = 0
var value = 666
while count != N {
    var temp = value
    while temp >= 666 {
        if temp % 1000 == 666 {
            count += 1
            break
        }
        temp /= 10
    }
    value += 1
}

print(value - 1)
