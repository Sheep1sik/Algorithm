import Foundation

func solution(_ operations:[String]) -> [Int] {
    var queue = [Int]()
    
    for op in operations {
        let parts = op.split(separator: " ")
        let command = parts[0]
        let value = Int(parts[1])!
        
        if command == "I" {
            queue.append(value)
            queue.sort()
        } else if command == "D" {
            if queue.isEmpty { continue }
            if value == 1 {
                queue.removeLast()
            } else if value == -1 {
                queue.removeFirst()
            }
        }
    }
    
    if queue.isEmpty {
        return [0, 0]
    } else {
        return [queue.last!, queue.first!]
    }
}