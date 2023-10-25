//
//  BOJ_10809.swift
//  Algorithm_Swift
//
//  Created by 김태현 on 2023/10/26.
//

let S = readLine()!
var alphaDictionary: [String:Int] = [:]

"abcdefghijklmnopqrstuvwxyz"
    .map { String($0 )}
    .forEach { alphaDictionary.updateValue(-1, forKey: $0) }

for (idx, alphabet) in S.enumerated() {
    let alphaString = String(alphabet)
    if alphaDictionary[alphaString] == -1 {
        alphaDictionary[alphaString] = idx
    }
}

let sortedValues = alphaDictionary
    .sorted(by: { $0.key < $1.key })
    .map { String($0.value) }
print(sortedValues.joined(separator: " "))
