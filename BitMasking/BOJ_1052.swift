//
//  BOJ_1052.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 11/28/23.
//

func getOneCount(num: Int) -> Int {
    var com = 1
    var count = 0
    
    while com <= num {
        if com & num == com {
            count += 1
        }
        com = com << 1
    }
    
    return count
}

let firstLine = readLine()!.split(separator: " ").map { Int(String($0))! }
var (N, K) = (firstLine[0], firstLine[1])
var oneCount = getOneCount(num: N)
var result = 0

while oneCount > K {
    N += 1
    result += 1
    oneCount = getOneCount(num: N)
}

print(result)
