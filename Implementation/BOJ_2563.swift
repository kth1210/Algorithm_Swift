//
//  BOJ_2563.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/23.
//

var drawingPaper = Array(repeating: Array(repeating: 0, count: 100), count: 100)
let paperCount = Int(readLine()!)!

for _ in 0..<paperCount {
    let paperLocation = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
    let (minX, minY) = (paperLocation[0], paperLocation[1])
    
    (minX..<minX + 10).forEach { x in
        (minY..<minY + 10).forEach { y in
            drawingPaper[x][y] += 1
        }
    }
}

let result = drawingPaper
    .flatMap { $0 }
    .filter { $0 != 0 }
    .count
print(result)
