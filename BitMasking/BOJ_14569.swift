//
//  BOJ_14569.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 11/30/23.
//

let N = Int(readLine()!)!
var classTimes: [Int] = []
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    var classTime = 0
    for number in input[1..<input.count] {
        classTime += 1 << (number - 1)
    }
    classTimes.append(classTime)
}

let M = Int(readLine()!)!
var results: [Int] = []
for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    var studentTime = 0
    for number in input[1..<input.count] {
        studentTime += 1 << (number - 1)
    }
    
    var result = 0
    for classTime in classTimes {
        if studentTime & classTime == classTime {
            result += 1
        }
    }
    results.append(result)
}

for result in results {
    print(result)
}
