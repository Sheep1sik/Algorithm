import Foundation

func solution(_ number: String, _ k: Int) -> String {
    var stack: [Character] = []
    var removeCount = k

    for digit in number {
        while removeCount > 0, let last = stack.last, last < digit {
            stack.removeLast()
            removeCount -= 1
        }
        stack.append(digit)
    }
    return String(stack.prefix(stack.count - removeCount))
}
