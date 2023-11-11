//
//  BOJ_2606.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/12.
//

func BFS(graph: [Int: [Int]], start: Int, computerCount: Int) -> Int {
    var visited: [Bool] = Array(repeating: false, count: computerCount + 1)
    var queue: [Int] = [start]
    visited[start] = true
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        
        guard let nextNodes = graph[node] else { continue }
        for nextNode in nextNodes {
            if !visited[nextNode] {
                queue.append(nextNode)
                visited[nextNode] = true
            }
        }
    }
    
    return visited.filter({ $0 == true }).count - 1
}

let computerCount = Int(readLine()!)!
let N = Int(readLine()!)!

var graph: [Int: [Int]] = [:]

for _ in 0..<N {
    let input = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
    
    let (f, s) = (input[0], input[1])
    if graph[f] == nil {
        graph[f] = [s]
    } else {
        graph[f]?.append(s)
    }
    
    if graph[s] == nil {
        graph[s] = [f]
    } else {
        graph[s]?.append(f)
    }
}

print(BFS(graph: graph, start: 1, computerCount: computerCount))
