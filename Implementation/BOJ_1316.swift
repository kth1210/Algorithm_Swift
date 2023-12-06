//
//  BOJ_1316.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 12/7/23.
//

let N = Int(readLine()!)!

var result = 0
for _ in 0..<N {
    let word = readLine()!
    var stack: [String] = .init()
    
    for char in word {
        if let last = stack.last,
           last == String(char) {
            stack.removeLast()
        }
        stack.append(String(char))
    }
    
    if Set(stack).count == stack.count {
        result += 1
    }
}

print(result)
