import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var dict: [String: [String]] = [:]
    var result: [String] = []

    for ticket in tickets {
        let from = ticket[0]
        let to = ticket[1]
        dict[from, default: []].append(to)
    }

    for key in dict.keys {
        dict[key]!.sort()
    }
    
    
    func dfs(_ airport: String) {
        while let next = dict[airport]?.first {
            dict[airport]!.removeFirst()
            dfs(next)
        }
        result.append(airport)
    }
    
    dfs("ICN")
    
    return result.reversed()
}