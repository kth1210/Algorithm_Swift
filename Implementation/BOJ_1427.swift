//
//  BOJ_1427.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/27.
//

let N = readLine()!
let digitNumbers: [String] = N.map { String($0) }
print(digitNumbers.sorted(by: >).joined())
