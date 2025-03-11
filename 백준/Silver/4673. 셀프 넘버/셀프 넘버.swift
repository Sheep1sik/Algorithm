func d(_ n: Int) -> Int {
    var num = n
    var sum = n
    
    while num > 0 {
        sum += num % 10
        num /= 10
    }
    
    return sum
}

let limit = 10000
var generatedNumbers = Set<Int>()

for i in 1...limit {
    let generated = d(i)
    if generated <= limit {
        generatedNumbers.insert(generated)
    }
}

for i in 1...limit {
    if !generatedNumbers.contains(i) {
        print(i)
    }
}
