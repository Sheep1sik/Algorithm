import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var result = 0
    
    func dfs(_ k: Int, _ count: Int, _ visited: inout [Bool]) {
        result = max(result, count)
        
        for i in 0..<dungeons.count {
            let minCost = dungeons[i][0]
            let useCost = dungeons[i][1]
            
            if !visited[i], k >= minCost {
                visited[i] = true
                dfs(k - useCost, count + 1, &visited)
                visited[i] = false
            }
        }
    }
    
    var visited = Array(repeating: false, count: dungeons.count)
    dfs(k, 0, &visited)
    
    return result
}