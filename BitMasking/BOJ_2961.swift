//
//  BOJ_2961.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 11/27/23.
//

typealias Flavor = (sour: Int, bitter: Int)

let N = Int(readLine()!)!
var flavors: [Flavor] = []
var result = Int.max

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    flavors.append((input[0], input[1]))
}

for bin in 1..<(1<<N) {
    var sour = 1
    var bitter = 0
    
    for idx in 0..<N {
        if (bin & (1<<idx)) != 0 {
            sour *= flavors[idx].sour
            bitter += flavors[idx].bitter
        }
    }
    result = min(abs(sour - bitter), result)
}

print(result)
