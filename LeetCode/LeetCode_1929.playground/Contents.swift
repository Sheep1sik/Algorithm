import UIKit

// 정답 코드
//class Solution {
//    func getConcatenation(_ nums: [Int]) -> [Int] {
//        var array = nums
//        return array + array
//    }
//}


// 리펙토링 코드
enum error: Error {
    case invalidLength
    case invalidElement
}

class Solution {
    
    func getConcatenation(_ nums: [Int]) throws -> [Int] {
        let n = nums.count
        
        guard n >= 1 && n <= 1000 else {
            throw error.invalidLength
        }
        guard nums.allSatisfy({$0 >= 1 && $0 <= 1000}) else {
            throw error.invalidElement
        }
        
        let array = nums
        return array + array
    }
}

var test = Solution()
var nums = [1,3,2,1]

do {
    let result = try test.getConcatenation(nums)
    print(result)
} catch {
    print(error)
}
