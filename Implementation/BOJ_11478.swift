//
//  BOJ_11478.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/01.
//

let inputArray = readLine()!.map { String($0) }
let count = inputArray.count

var substrings = Set<String>()
for front in 0..<count {
    var base = ""
    for rear in front..<count {
        base += inputArray[rear]
        substrings.insert(base)
    }
}

print(substrings.count)
