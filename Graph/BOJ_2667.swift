//
//  BOJ_2667.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/15.
//

func blockCount(
    board: inout [[Int]],
    startRow: Int,
    startCol: Int
) -> Int {
    var count = 0
    
    DFS(
        board: &board,
        count: &count,
        startRow: startRow,
        startCol: startCol
    )
    
    return count
}

func DFS(
    board: inout [[Int]],
    count: inout Int,
    startRow: Int,
    startCol: Int
) {
    count += 1
    board[startRow][startCol] = -1
    
    let dx = [0, 0, 1, -1]
    let dy = [1, -1, 0, 0]
    
    for idx in 0..<4 {
        let nextRow = dx[idx] + startRow
        let nextCol = dy[idx] + startCol
        
        if nextRow >= 0 && nextRow < board.count && nextCol >= 0 && nextCol < board[0].count && board[nextRow][nextCol] == 1 {
            DFS(
                board: &board,
                count: &count,
                startRow: nextRow,
                startCol: nextCol
            )
        }
    }
}

let N = Int(readLine()!)!

var board: [[Int]] = []
for _ in 0..<N {
    let row = readLine()!
        .map({ String($0) })
        .map({ Int($0)! })
    
    board.append(row)
}

var result: [Int] = []
for row in 0..<board[0].count {
    for col in 0..<board.count where board[row][col] == 1 {
        result.append(blockCount(
            board: &board,
            startRow: row,
            startCol: col
        ))
    }
}

print(result.count)
for count in result.sorted() {
    print(count)
}

