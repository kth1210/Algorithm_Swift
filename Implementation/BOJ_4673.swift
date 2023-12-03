//
//  BOJ_4673.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 12/3/23.
//

func d(_ n: Int) -> Int {
    var num = n
    var sum = n
    
    while num > 0 {
        sum += (num % 10)
        num /= 10
    }
    
    return sum
}

var numberSet: Set<Int> = .init()
for number in 1...10000 {
    numberSet.insert(d(number))
}

for number in 1...10000 {
    if !numberSet.contains(number) {
        print(number)
    }
}
