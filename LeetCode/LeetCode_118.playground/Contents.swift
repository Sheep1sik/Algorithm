import UIKit

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows != 0 else { return [] }
        var row = [1]
        var triangle = [row]
        for i in 1..<numRows {
            var newRows = Array(repeating: 0, count: i+1)
            newRows[0] = 1
            newRows[i] = 1
            
            for j in 1..<i {
                newRows[j] = row[j - 1] + row[j]
            }
            
            row = newRows
            triangle.append(row)
        }
        
        return triangle
    }
}
