import Foundation

func solution(_ num:Int, _ n:Int) -> Int {
    return num % n == 0 ? 1 : 0
}

var num = 98
var n = 2
var result = solution(num, n)

print(result)
