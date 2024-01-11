import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numMap = [Int:Int]()
        for(index, num) in nums.enumerated() {
            let complement = target - num
            if let complementIndex = numMap[complement] {
                return [complementIndex, index]
            }
            numMap[num] = index
        }
        return []
    }
}
