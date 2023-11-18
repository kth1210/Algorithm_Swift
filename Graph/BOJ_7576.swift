//
//  BOJ_7576.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/17.
//

typealias Location = (row: Int, col: Int)

func ripe(tomatos: inout [[Int]], startLocations: [Location]) {
    let dx: [Int] = [0, 0, 1, -1]
    let dy: [Int] = [1, -1, 0, 0]
    var idx: Int = 0
    var queue: [Location] = startLocations
    
    while idx < queue.count {
        let nowLocation = queue[idx]
        idx += 1
        
        for i in 0..<4 {
            let nextRow = nowLocation.row + dx[i]
            let nextCol = nowLocation.col + dy[i]
            
            if nextRow >= 0 && nextRow < N && nextCol >= 0 && nextCol < M && tomatos[nextRow][nextCol] == 0 {
                tomatos[nextRow][nextCol] = tomatos[nowLocation.row][nowLocation.col] + 1
                queue.append((nextRow, nextCol))
            }
        }
    }
}

let firstLine = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }

let (M, N) = (firstLine[0], firstLine[1])

var tomatos: [[Int]] = []

for _ in 0..<N {
    let row = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
    
    tomatos.append(row)
}

var startLocations: [Location] = []
for row in 0..<N {
    for col in 0..<M where tomatos[row][col] == 1 {
        startLocations.append((row, col))
    }
}
ripe(tomatos: &tomatos, startLocations: startLocations)

let result = tomatos.flatMap({ $0 })
if result.contains(0) {
    print(-1)
} else {
    print(result.max()! - 1)
}
