func generate(_ numRows: Int) -> [[Int]] {
    guard numRows > 0 else { return [] }
    var result: [[Int]] = [[1]]
    while result.count < numRows {
        let prev = result.last!
        var next:[Int] = [1]
        for i in 0..<(prev.count - 1) {
            next.append(prev[i] + prev[i + 1])
        }
        next.append(1)
        result.append(next)
    }
    return result
}
