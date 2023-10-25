//
//  BOJ_9063.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/25.
//

let N = Int(readLine()!)!

var xPoints: [Int] = []
var yPoints: [Int] = []
for _ in 0..<N {
    let point = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
    xPoints.append(point[0])
    yPoints.append(point[1])
}

let width = xPoints.max()! - xPoints.min()!
let height = yPoints.max()! - yPoints.min()!

print(width * height)
