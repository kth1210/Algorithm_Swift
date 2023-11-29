//
//  BOJ_1094.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 11/30/23.
//

let X = Int(readLine()!)!
var stickLength = 64
var result = 0

while stickLength > 0 {
    if X & stickLength == stickLength {
        result += 1
    }
    stickLength = stickLength >> 1
}

print(result)
// print(X.nonzeroBitCount)
