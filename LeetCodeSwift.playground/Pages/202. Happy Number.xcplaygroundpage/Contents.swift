func isHappy(_ n: Int) -> Bool {
    var seen = Set<Int>()
    var num = n
    while num != 1 {
        if seen.contains(num) { return false }
        seen.insert(num)
        num = sumOfSquarea(num)
    }
    return true
}

func sumOfSquarea(_ n: Int) -> Int {
    var num = n
    var squareSum = 0
    while num > 0 {
        let digit = num % 10
        squareSum += digit * digit
        num /= 10
    }
    return squareSum
}
