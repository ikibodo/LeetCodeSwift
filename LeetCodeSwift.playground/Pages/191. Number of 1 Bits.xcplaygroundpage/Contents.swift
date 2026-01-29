func hammingWeight1(_ n: Int) -> Int {
    var x = UInt32(truncatingIfNeeded: n)
    var result = 0
    while x > 0 {
        result += 1
        x &= (x - 1)
    }
    return result
}
