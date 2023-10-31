//
//  BOJ_7785.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/31.
//

let n = Int(readLine()!)!

var dictionary: [String:Bool] = [:]
for _ in 0..<n {
    let input = readLine()!
        .split(separator: " ")
        .map { String($0) }
    
    let (name, status) = (input[0], input[1])
    
    if status == "enter" {
        dictionary.updateValue(true, forKey: name)
    }
    
    if status == "leave" {
        dictionary.removeValue(forKey: name)
    }
}

dictionary
    .sorted(by: { $0.key > $1.key })
    .forEach { print($0.key) }
