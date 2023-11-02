//
//  BOJ_9012.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/02.
//

let T = Int(readLine()!)!

for _ in 0..<T {
    var stack: [String] = []
    var isSuccess: Bool = true
    let input = readLine()!.map { String($0) }
    
    input.forEach { parenthesis in
        if parenthesis == "(" {
            stack.append(parenthesis)
        }
        
        if parenthesis == ")" {
            if let last = stack.last, last == "(" {
                stack.popLast()
            } else {
                isSuccess = false
            }
        }
    }
    
    if stack.isEmpty && isSuccess {
        print("YES")
    } else {
        print("NO")
    }
}

