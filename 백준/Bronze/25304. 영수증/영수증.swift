import Foundation

func input() -> Int {
    Int(readLine()!)!
}

func inputPair() -> (Int, Int) {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    return (line[0], line[1])
}

let X = input()
let N = input()
var total = 0

for _ in 0..<N {
    let (a, b) = inputPair()
    total += a * b
}

print(X == total ? "Yes" : "No")
