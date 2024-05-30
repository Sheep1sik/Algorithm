import Foundation

func solution(_ a:Int, _ b:Int, _ flag:Bool) -> Int {
    return flag == true ? a + b : a - b
}

var a = -4
var b = 7
var flag = true
var result = solution(a, b, flag)

print(result)
