import UIKit

if let input = readLine()?.split(separator: " ").map({ Int($0)! }) {
    let A = input[0]
    let B = input[1]
    let sum = A + B
    print(sum)
}
