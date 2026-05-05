// Time: O(n)
// Space: O(n)

func fizzBuzz(_ n: Int) -> [String] {
    var result: [String] = []
    
    for i in 1...n {
        if i % 3 == 0 && i % 5 == 0 {
            result.append("FizzBuzz")
        } else if i % 3 == 0 {
            result.append("Fizz")
        } else if i % 5 == 0 {
            result.append("Buzz")
        } else {
            result.append(String(i))
        }
    }
    
    return result
}

func fizzBuzzOneLine(_ n: Int) -> [String] {
        (1...n).map { let s = ($0 % 3 == 0 ? "Fizz" : "") + ($0 % 5 == 0 ? "Buzz" : ""); return s.isEmpty ? String($0) : s }
    }
