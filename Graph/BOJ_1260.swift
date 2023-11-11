//
//  BOJ_1260.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/11/11.
//

func DFS(graph: [[Int]], start: Int, visited: inout [Bool]) {
    visited[start] = true
    print(start, terminator: " ")
    
    for next in graph[start].sorted() {
        if !visited[next] {
            DFS(graph: graph, start: next, visited: &visited)
        }
    }
}

func BFS(graph: [[Int]], start: Int) {
    var queue: [Int] = [start]
    var visited: [Bool] = Array(repeating: false, count: N + 1)
    visited[start] = true
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        print(node, terminator: " ")
        
        for next in graph[node].sorted() {
            if !visited[next] {
                queue.append(next)
                visited[next] = true
            }
        }
    }
}

let input = readLine()!
    .split(separator: " ")
    .map { Int(String($0))! }

let (N, M, V) = (input[0], input[1], input[2])
var graph: [[Int]] = Array(repeating: [], count: N + 1)

for _ in 0..<M {
    let numbers = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
    
    let (f, s) = (numbers[0], numbers[1])
    
    graph[f].append(s)
    graph[s].append(f)
}

var visited: [Bool] = Array(repeating: false, count: N + 1)
DFS(graph: graph, start: V, visited: &visited)
print()
BFS(graph: graph, start: V)
