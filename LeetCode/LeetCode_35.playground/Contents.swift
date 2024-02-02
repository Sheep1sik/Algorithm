import UIKit


class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if let result = nums.firstIndex(of: target) {
            return result
        } else {
            var copyNums = nums
            copyNums.append(target)
            copyNums.sort()
            return copyNums.firstIndex(of: target)!
        }
    }
}
