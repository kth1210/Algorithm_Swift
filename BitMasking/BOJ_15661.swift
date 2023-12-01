//
//  BOJ_15661.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 12/1/23.
//

func calculatePower(startTeamMember: Int) -> Int {
    var startTeam: [Int] = []
    var linkTeam: [Int] = []
    
    for com in 0..<N {
        if startTeamMember & (1<<com) == 0 {
            startTeam.append(com)
        } else {
            linkTeam.append(com)
        }
    }
    
    let startTeamPower = calculateTeamPower(team: startTeam)
    let linkTeamPower = calculateTeamPower(team: linkTeam)
    
    return abs(startTeamPower - linkTeamPower)
}

func calculateTeamPower(team: [Int]) -> Int {
    var teamPower = 0
    for i in team {
        for j in team {
            teamPower += powerList[i][j]
        }
    }
    return teamPower
}

let N = Int(readLine()!)!
var powerList: [[Int]] = []
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    powerList.append(input)
}

var minDiff = Int.max
for teamMember in 1..<((1<<N) - 1) {
    minDiff = min(minDiff, calculatePower(startTeamMember: teamMember))
}

print(minDiff)

