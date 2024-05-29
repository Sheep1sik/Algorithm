import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    
    return Int(String(a) + String(b))! >= (2 * a * b) ? Int(String(a) + String(b))! : (2 * a * b)
}

var a = 2
var b = 91

var result = solution(a, b)

print(result)
