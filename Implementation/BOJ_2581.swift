//
//  BOJ_2581.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/25.
//

func findPrimeNumbers(from start: Int, through end: Int) -> [Int] {
    var primeNumbers: [Int] = []
    for number in stride(from: start, through: end, by: 1) {
        if isPrime(number: number) {
            primeNumbers.append(number)
        }
    }
    return primeNumbers
}

func isPrime(number: Int) -> Bool {
    guard number > 1 else { return false }
    
    for div in (2..<number) {
        if number % div == 0 {
            return false
        }
    }
    
    return true
}

let M = Int(readLine()!)!
let N = Int(readLine()!)!

let primeNumbers = findPrimeNumbers(from: M, through: N)

if primeNumbers.isEmpty {
    print(-1)
} else {
    print(primeNumbers.reduce(0, +))
    print(primeNumbers.min()!)
}
