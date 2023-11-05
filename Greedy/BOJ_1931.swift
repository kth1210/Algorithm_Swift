//
//  BOJ_1931.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/05.
//

typealias Meeting = (start: Int, end: Int)

let N = Int(readLine()!)!

var meetings: [Meeting] = []
for _ in 0..<N {
    let input = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
    
    meetings.append((input[0], input[1]))
}

var result = 0
var hour = 0
meetings.sort(by: {
    $0.end == $1.end ? $0.start < $1.start : $0.end < $1.end
})

for meeting in meetings {
    if meeting.start >= hour {
        result += 1
        hour = meeting.end
    }
}

print(result)
