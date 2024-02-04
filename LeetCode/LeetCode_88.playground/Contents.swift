import UIKit

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1.removeSubrange(m-1..<nums1.count)
        nums1 += nums2
        nums1.sort(by: >) // 내림차순으로 정렬
        
        // nums2의 불필요한 요소 제거
        let totalLength = m + n
        if nums1.count > totalLength {
            nums1.removeLast(nums1.count - totalLength)
        }
        nums1.sort()
    }
}
