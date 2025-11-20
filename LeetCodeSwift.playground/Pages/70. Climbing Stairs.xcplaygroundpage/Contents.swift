func climbStairs(_ n: Int) -> Int {
    if n < 2 { return 1 }
    var prevOne = 1
    var prevTwo = 1
    for _ in 2...n {
        let current = prevOne + prevTwo
        prevTwo = prevOne
        prevOne = current
    }
    return prevOne
}
