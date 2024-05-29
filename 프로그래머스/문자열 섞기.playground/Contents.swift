import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    
    return zip(str1, str2).map { String($0) + String($1) }.joined()
}

var str1 = "aaaaa"
var str2 = "bbbbb"

var result = solution(str1, str2)

print(result)
