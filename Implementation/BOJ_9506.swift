//
//  BOJ_9506.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/25.
//

import Foundation

func makeDivisorList(from number: Int) -> [Int] {
    var list: [Int] = []
    
    for divisor in stride(from: 1, through: Int(sqrt(Double(number))), by: 1) {
        if number % divisor == 0 {
            list.append(divisor)
            list.append(number / divisor)
        }
    }
    
    return list.filter { $0 != number }
}

while let n = Int(readLine()!), n != -1 {
    let divisorList = makeDivisorList(from: n)
    let divisorSum = divisorList.reduce(0, +)
    
    if divisorSum == n {
        print("\(n) = \(divisorList.sorted().map{ String($0) }.joined(separator: " + "))")
    } else {
        print("\(n) is NOT perfect.")
    }
}
