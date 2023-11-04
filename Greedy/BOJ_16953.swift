//
//  BOJ_16953.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/04.
//

let input = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }

var A = input[0]
var B = input[1]
var count = 0

while A < B {
    if B % 2 == 0 {
        B /= 2
    } else if B % 10 == 1 {
        B /= 10
    } else {
        break
    }
    
    count += 1
}

if A == B {
    print(count + 1)
} else {
    print(-1)
}
