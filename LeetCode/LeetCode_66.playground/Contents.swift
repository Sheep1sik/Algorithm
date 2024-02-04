import UIKit

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        var carry = 1
        for i in stride(from: digits.count-1, through: 0, by: -1) {
            let sum = result[i] + carry
            result[i] = sum % 10
            carry = sum / 10
            
            if carry == 0 {
                break
            }
        }
        
        if carry > 0 {
            result.insert(carry, at: 0)
        }
        return result
    }
}
