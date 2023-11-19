//
//  BOJ_10026.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/19.
//

typealias Coordinate = (row: Int, col: Int)

func calculateSectionCount(picture: [[String]]) -> Int {
    let pictureRow: Int = picture.count
    let pictureCol: Int = picture[0].count
    
    var visited: [[Bool]] = Array(
        repeating: Array(
            repeating: false,
            count: pictureCol
        ),
        count: pictureRow
    )
    
    let dx: [Int] = [0, 0, 1, -1]
    let dy: [Int] = [1, -1, 0, 0]
    var sectionCount: Int = 0
    
    for row in 0..<pictureRow {
        for col in 0..<pictureCol where !visited[row][col] {
            sectionCount += 1
            
            var queue: [Coordinate] = [(row, col)]
            let startColor: String = picture[row][col]
            
            while !queue.isEmpty {
                let now = queue.removeFirst()
                
                for idx in 0..<4 {
                    let nextRow = now.row + dx[idx]
                    let nextCol = now.col + dy[idx]
                    
                    if 0..<pictureRow ~= nextRow,
                       0..<pictureCol ~= nextCol,
                       !visited[nextRow][nextCol],
                       picture[nextRow][nextCol] == startColor {
                        
                        queue.append((nextRow, nextCol))
                        visited[nextRow][nextCol] = true
                    }
                }
            }
        }
    }
    
    return sectionCount
}

let N = Int(readLine()!)!

var picture: [[String]] = []
var colorantPicture: [[String]] = []

for _ in 0..<N {
    let row = readLine()!.map { String($0) }
    let colorantRow = row.map { $0 == "G" ? "R" : $0 }
    picture.append(row)
    colorantPicture.append(colorantRow)
}

let notColorantSectionCount = calculateSectionCount(picture: picture)
let colorantSectionCount = calculateSectionCount(picture: colorantPicture)

print("\(notColorantSectionCount) \(colorantSectionCount)")
