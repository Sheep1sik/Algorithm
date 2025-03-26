guard let input = readLine()?.split(separator: " ").compactMap( { Int($0) }), input.count == 3 else {
    fatalError("입력 3개만 가능")
}

let A = input[0]
let B = input[1]
let C = input[2]

let sum = A + B + C

print (sum)
