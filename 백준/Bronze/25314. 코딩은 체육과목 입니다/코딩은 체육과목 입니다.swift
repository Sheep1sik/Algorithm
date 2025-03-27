import Foundation

func input() -> Int {
    return Int(readLine()!)!
}

let N = input()
var dataType: [String] = []
for i in 0..<N/4 {
    dataType.append("long")
}

print(dataType.joined(separator: " "),"int")


