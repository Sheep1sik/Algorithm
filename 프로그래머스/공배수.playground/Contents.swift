import Foundation

func solution(_ number:Int, _ n:Int, _ m:Int) -> Int {
    (number % n == 0) && (number % m == 0) ? 1 : 0
}

var number = 60
var n = 2
var m = 3
var result = solution(number, n, m)

print(result)
