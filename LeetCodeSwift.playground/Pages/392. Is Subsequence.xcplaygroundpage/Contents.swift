func isSubsequence(_ s: String, _ t: String) -> Bool {
    let sChars = Array(s)
    let tChars = Array(t)
    var i = 0
    var j = 0
    while i < sChars.count && j < tChars.count {
        if sChars[i] == tChars[j] {
            i += 1
        }
        j += 1
    }
    return i == sChars.count
}
