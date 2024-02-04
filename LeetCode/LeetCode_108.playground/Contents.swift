import UIKit

class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return sortedArrayToBST(nums, 0, nums.count - 1)
    }
    
    private func sortedArrayToBST(_ nums: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        guard left <= right else { return nil }
        
        let mid = (left + right) / 2
        let root = TreeNode(nums[mid])
        root.left = sortedArrayToBST(nums, left, mid - 1)
        root.right = sortedArrayToBST(nums, mid + 1, right)
        
        return root
    }
}
