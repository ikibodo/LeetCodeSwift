func countBits(_ n: Int) -> [Int] {
    var result = Array(repeating: 0, count: n + 1)
    for i in 1..<(n + 1) {
        result[i] = result[i >> 1] + (i & 1)
    }
    return result
}
