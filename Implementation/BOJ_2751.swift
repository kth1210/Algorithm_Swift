//
//  BOJ_2751.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/27.
//

let N = Int(readLine()!)!

var list: [Int] = []
for _ in 0..<N {
    list.append(Int(readLine()!)!)
}

list.sorted()
    .forEach { print($0) }
