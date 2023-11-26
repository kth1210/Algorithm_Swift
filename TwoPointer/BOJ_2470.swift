//
//  BOJ_2470.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 11/26/23.
//

let N = Int(readLine()!)!
let values = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var left = 0
var right = N - 1
var minValue = Int.max
var result: (Int, Int) = (0, 0)

while left < right {
    let value = values[left] + values[right]
    
    if abs(value) < minValue {
        minValue = abs(value)
        result = (values[left], values[right])
        if value == 0 { break }
    }
    
    if value > 0 {
        right -= 1
    } else {
        left += 1
    }
}

print("\(result.0) \(result.1)")
