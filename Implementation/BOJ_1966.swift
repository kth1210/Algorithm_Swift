//
//  BOJ_1966.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 12/4/23.
//

let N = Int(readLine()!)!

for _ in 0..<N {
    let firstLine = readLine()!.split(separator: " ").map { Int(String($0))! }
    let M = firstLine[1]
    var papers = readLine()!.split(separator: " ").map { Int(String($0))! }.enumerated().map { $0 }
    
    var isFinished = false
    var leftIdx = 0
    var count = 0
    while !isFinished {
        let (offset, number) = papers[leftIdx]
        if papers[leftIdx..<papers.count].filter({ $0.element > number }).isEmpty {
            count += 1
            if offset == M { isFinished = true }
        } else {
            papers.append((offset, number))
        }
        leftIdx += 1
    }
    print(count)
}
