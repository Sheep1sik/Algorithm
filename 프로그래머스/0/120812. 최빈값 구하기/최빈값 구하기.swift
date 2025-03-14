import Foundation

func solution(_ array:[Int]) -> Int {
    var dict = [Int: Int]()
    
    for num in array {
        dict[num, default: 0] += 1
    }
    
    let maxFrequency = dict.values.max()!
    let modeCandidates = dict.filter { $0.value == maxFrequency }.keys

    return modeCandidates.count > 1 ? -1 : modeCandidates.first!
}