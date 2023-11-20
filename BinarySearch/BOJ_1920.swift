//
//  BOJ_1920.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 11/20/23.
//

func isExist(_ number: Int, in originNumbers: [Int]) -> Bool {
    var start = 0
    var end = originNumbers.count - 1
    
    while start <= end {
        let mid = (start + end) / 2
        
        if originNumbers[mid] == number {
            return true
        } else if originNumbers[mid] > number {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    
    return false
}

let N = Int(readLine()!)!
let A = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }
    .sorted()

let M = Int(readLine()!)!
let numbers = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }

for number in numbers {
    print(isExist(number, in: A) ? "1" : "0")
}
