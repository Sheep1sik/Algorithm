import Foundation

func solution(_ array:[Int]) -> Int {
    var result = array.sorted()
    return result[array.count / 2]
}