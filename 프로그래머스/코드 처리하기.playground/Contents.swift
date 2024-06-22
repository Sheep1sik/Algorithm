import Foundation

func solution(_ code:String) -> String {
    
    var idx = code.map {String($0)}
    var mode  = 0
    var ret: String = ""
    
    for i in 0 ... code.count-1 {
        if mode == 0 {
            if idx[i] == "1" {
                mode = 1
            }else{
                (i % 2 == 0) ? (ret += idx[i]) : (ret += "")
            }
        }else{
             if idx[i] == "1" {
                mode = 0
            }else{
                (i % 2 == 1) ? (ret += idx[i]) : (ret += "")
            }
        }
    }
    
    return ret == "" ? "EMPTY" : ret
}
