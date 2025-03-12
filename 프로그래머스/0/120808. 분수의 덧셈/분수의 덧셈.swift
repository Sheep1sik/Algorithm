import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    let commonDenom = lcm(denom1, denom2)
    let newNumer1 = numer1 * (commonDenom / denom1)
    let newNumer2 = numer2 * (commonDenom / denom2)
    let resultNumer = newNumer1 + newNumer2
    
    let gcdValue = gcd(resultNumer, commonDenom)
    return [resultNumer / gcdValue, commonDenom / gcdValue]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}
    
func lcm(_ a: Int, _ b: Int) -> Int {
    return(a * b) / gcd(a, b) 
}