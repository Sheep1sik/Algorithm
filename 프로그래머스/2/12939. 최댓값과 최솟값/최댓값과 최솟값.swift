func solution(_ s: String) -> String {
    let numbers = s.split(separator: " ").compactMap { Int($0) }
    guard let minNum = numbers.min(), let maxNum = numbers.max() else {
        return ""
    }
    return "\(minNum) \(maxNum)"
}
