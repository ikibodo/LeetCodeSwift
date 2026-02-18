func isUgly(_ n: Int) -> Bool {
    guard n > 0 else { return false }
    if n == 1 { return true }
    var n = n
    while n % 2 == 0 {
        n /= 2
    }
    while n % 3 == 0 {
        n /= 3
    }
    while n % 5 == 0 {
        n /= 5
    }
    return n == 1
}
