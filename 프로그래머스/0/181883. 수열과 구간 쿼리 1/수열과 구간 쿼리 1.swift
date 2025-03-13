import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    
    for query in queries {
        let s = query[0]
        let e = query[1]
        
        for i in s...e {
            result[i] += 1
        }
    }
    return result
}