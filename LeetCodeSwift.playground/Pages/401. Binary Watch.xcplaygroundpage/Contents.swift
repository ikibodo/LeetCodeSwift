func readBinaryWatch(_ turnedOn: Int) -> [String] {
    var result: [String] = [ ]
    for h in 0..<12 {
        for m in 0..<60 {
            if h.nonzeroBitCount + m.nonzeroBitCount == turnedOn {
                result.append("\(h):\(String(format:"%02d", m))")
            }
        }
    }
    return result
}
