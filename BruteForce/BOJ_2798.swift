//
//  BOJ_2798.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/25.
//

let firstLine = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }

let (N, M) = (firstLine[0], firstLine[1])

let cardList = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }

let cardCount = cardList.count

var result = 0
for firstIdx in 0..<cardCount-2 {
    for secondIdx in firstIdx+1..<cardCount-1 {
        for thirdIdx in secondIdx+1..<cardCount {
            let value = cardList[firstIdx] + cardList[secondIdx] + cardList[thirdIdx]
            
            if value <= M {
                result = max(value, result)
            }
        }
    }
}

print(result)
