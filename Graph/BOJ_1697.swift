//
//  BOJ_1697.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/18.
//

let input = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }

let (N, K) = (input[0], input[1])

var locations: [Int] = Array(repeating: 0, count: 100_002)
var history: [Int] = [N]

while !history.isEmpty {
    let nowLocation = history.removeFirst()
    if nowLocation == K {
        print(locations[nowLocation])
        break
    }
    
    let nextLocations: [Int] = [nowLocation - 1, nowLocation + 1, nowLocation * 2]
    for nextLocation in nextLocations {
        if nextLocation >= 0 && nextLocation < 100002 && locations[nextLocation] == 0 {
            locations[nextLocation] = locations[nowLocation] + 1
            history.append(nextLocation)
        }
    }
}

