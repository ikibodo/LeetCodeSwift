func isPowerOfThree(_ n: Int) -> Bool {
    guard n > 0 else { return false }
    var n = n
    while n.isMultiple(of: 3) {
        n /= 3
    }
    return  n == 1
}
