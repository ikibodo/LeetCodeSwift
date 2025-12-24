func getRow(_ rowIndex: Int) -> [Int] {
    var row = [1]
    if rowIndex == 0 { return row }
    for k in 1...rowIndex {
        let next = row.last! * (rowIndex - k + 1) / k
        row.append(next)
    }
    return row
}
