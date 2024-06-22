import UIKit

/* Big O 표기법
    알고리즘의 성능을 비교하는 데 사용되는 언어
 */


func findNemo(_ arr: [String]) {
    let before = Date()
    
    for i in 0..<arr.count {
        if arr[i] == "nemo" {
            print("Find him !")
        }
    }
    
    let after = Date()
    let component = Calendar.current.dateComponents([.nanosecond], from: before, to: after)
    let milliSeconds: Double = Double(component.nanosecond! / 1000000)
    
    print("Finding nemo took: \(milliSeconds)")
}

let nemo = Array<String>(repeating: "", count: 1)
findNemo(nemo)


// Constant time O(1)
func constantTime(_ n: Int) -> Int {
    let result = n * n
    return result
}

// Linear time O(n)
func linearTime(_ A: [Int]) -> Int {
    for i in 0 ..< A.count {
        if A[i] == 0 {
            return 0
        }
    }
    return 1
}

linearTime([1, 2, 3])

// Logarithmic time O(log n)
func logarithmicTime(_ N: Int) -> Int {
    var n = N
    var result = 0
    while n > 1 {
        n /= 2
        print(n)
        result += 1
    }
    return result
}
logarithmicTime(128)

// Quadratic time O(n^2)
func quadratic(_ n : Int) -> Int {
    var result = 0
    for i in 0 ..< n {
        for j in i ..< n {
            result += 1
        }
    }
    return result
}
quadratic(16)

var arr = [1, 2, 3]
arr.append(4)

var set = Set<Int>()
set.count


func commonItemsBrute(_ A: [Int], _ B: [Int]) -> Bool {
    for i in 0..<A.count {
        for j in 0..<B.count {
            if A[i] == B[j] {
                return true
            }
        }
    }
    return false
}

commonItemsBrute([1, 2, 3], [4, 5, 6])
commonItemsBrute([1, 2, 3], [3, 5, 6])

func commonItemsHash(_ A: [Int], _ B: [Int]) -> Bool {
    
    var hashA = [Int: Bool]()
    for a in A { // O(n)
        hashA[a] = true
    }
    
    for b in B { // O(n)
        if hashA[b] == true {
            return true
        }
    }
    return false
}
