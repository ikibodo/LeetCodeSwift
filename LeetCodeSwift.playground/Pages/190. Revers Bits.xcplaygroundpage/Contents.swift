func reverseBits(_ n: Int) -> Int {
    var num = n
    var result = 0
    for _ in 0..<32 {
        result = (result << 1) | (num & 1)
        num >>= 1
    }
    return result
}
