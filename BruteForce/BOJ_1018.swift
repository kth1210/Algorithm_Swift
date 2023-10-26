//
//  BOJ_1018.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/27.
//

func repaintedCount(from board: [[String]]) -> Int {
    return min(
        whiteStartRepainted(from: board),
        blackStartRepainted(from: board)
    )
}

func whiteStartRepainted(from board: [[String]]) -> Int {
    var count = 0
    for row in 0..<8 {
        for col in 0..<8 {
            if (row + col) % 2 == 0 {
                if board[row][col] != "W" {
                    count += 1
                }
            } else {
                if board[row][col] != "B" {
                    count += 1
                }
            }
        }
    }
    return count
}

func blackStartRepainted(from board: [[String]]) -> Int {
    var count = 0
    for row in 0..<8 {
        for col in 0..<8 {
            if (row + col) % 2 == 0 {
                if board[row][col] != "B" {
                    count += 1
                }
            } else {
                if board[row][col] != "W" {
                    count += 1
                }
            }
        }
    }
    return count
}

func selectBoard(from board: [[String]], row: Int, col: Int) -> [[String]] {
    var selectedBoard: [[String]] = []
    for r in row..<row+8 {
        selectedBoard.append(Array(board[r][col..<col+8]))
    }
    return selectedBoard
}

let input = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }

let (N, M) = (input[0], input[1])

var board: [[String]] = []
for _ in 0..<N {
    let line = readLine()!.map { String($0) }
    board.append(line)
}

var result = 64
for row in 0...N-8 {
    for col in 0...M-8 {
        let selectedBoard = selectBoard(from: board, row: row, col: col)
        result = min(result, repaintedCount(from: selectedBoard))
    }
}

print(result)
