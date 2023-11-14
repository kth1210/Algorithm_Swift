//
//  BOJ_2178.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/14.
//

typealias Coordinate = (x: Int, y: Int)

func minMove(board: [[Int]]) -> Int {
    let col = board[0].count
    let row = board.count
    
    var moveCount: [[Int]] = Array(
        repeating: Array(
            repeating: 0,
            count: col
        ),
        count: row
    )
    
    let dx: [Int] = [1, 0, -1, 0]
    let dy: [Int] = [0, 1, 0, -1]
    
    var queue: [Coordinate] = [(0, 0)]
    moveCount[0][0] = 1
    
    while !queue.isEmpty {
        let currentCoordinate = queue.removeFirst()
        
        for idx in 0..<4 {
            let nextX = currentCoordinate.x + dx[idx]
            let nextY = currentCoordinate.y + dy[idx]
            
            if nextX < 0 || nextX >= col || nextY < 0 || nextY >= row || board[nextY][nextX] == 0 {
                continue
            }
            
            let nextDistance = moveCount[currentCoordinate.y][currentCoordinate.x] + 1
            
            if moveCount[nextY][nextX] == 0 {
                moveCount[nextY][nextX] = nextDistance
                queue.append((nextX, nextY))
            }
        }
    }
    
    return moveCount[row - 1][col - 1]
}

let firstLine = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }

let (N, M) = (firstLine[0], firstLine[1])

var board: [[Int]] = []
for _ in 0..<N {
    let row = readLine()!
        .map({ String($0) })
        .map({ Int($0)! })
    
    board.append(row)
}

print(minMove(board: board))

