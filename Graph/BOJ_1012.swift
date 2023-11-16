//
//  BOJ_1012.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/16.
//

typealias Coordinate = (x: Int, y: Int)

func sectionCount(field: inout [[Int]]) -> Int {
    var count = 0
    let dx: [Int] = [0, 0, 1, -1]
    let dy: [Int] = [1, -1, 0, 0]
    
    for row in 0..<field.count {
        for col in 0..<field[0].count where field[row][col] == 1 {
            count += 1
            var queue: [Coordinate] = [(col, row)]
            field[row][col] = 0
            
            while !queue.isEmpty {
                let now = queue.removeFirst()
                
                for idx in 0..<4 {
                    let nextX = now.x + dx[idx]
                    let nextY = now.y + dy[idx]
                    
                    if nextX >= 0 && nextX < field[0].count && nextY >= 0 && nextY < field.count && field[nextY][nextX] == 1 {
                        queue.append((nextX, nextY))
                        field[nextY][nextX] = 0
                    }
                }
            }
        }
    }
    
    return count
}


let T = Int(readLine()!)!

for _ in 0..<T {
    let firstLine = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
    
    let (M, N, K) = (firstLine[0], firstLine[1], firstLine[2])
    
    var field: [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)
    for _ in 0..<K {
        let input = readLine()!
            .split(separator: " ")
            .map { Int(String($0))! }
        
        let (X, Y) = (input[0], input[1])
        
        field[Y][X] = 1
    }

    print(sectionCount(field: &field))
}
