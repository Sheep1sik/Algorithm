import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var ab = Int(String(a) + String(b))!
    var ba = Int(String(b) + String(a))!
    
    if ab >= ba {
        return ab
    } else {
        return ba
    }
}

var a = 12
var b = 3

var result = solution(a, b)

print(result)


