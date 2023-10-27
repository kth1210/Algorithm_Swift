//
//  BOJ_1181.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/27.
//

let N = Int(readLine()!)!

var words: Set<String> = []
for _ in 0..<N {
    let input = readLine()!
    words.insert(input)
}

words.sorted(by: {
    $0.count == $1.count ? $0 < $1 : $0.count < $1.count
})
.forEach { print($0) }
