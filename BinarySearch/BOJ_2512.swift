//
//  BOJ_2512.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 11/24/23.
//

let N = Int(readLine()!)!
let budgets = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }
let M = Int(readLine()!)!

var min = 0
var max = budgets.max()!
var result = 0

while min <= max {
    let budget = (min + max) / 2
    let totalBudget = budgets.map({ $0 > budget ? budget : $0 }).reduce(0, +)
    
    if M >= totalBudget {
        result = budget
        min = budget + 1
    } else {
        max = budget - 1
    }
}

print(result)
