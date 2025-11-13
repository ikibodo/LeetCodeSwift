func lengthOfLastWord(_ s: String) -> Int {
    var result = 0
    var i = s.index(before: s.endIndex)
    while i >= s.startIndex && s[i] == " " {
        if i == s.startIndex { return 0 }
        i = s.index(before: i)
    }
    while i >= s.startIndex && s[i] != " " {
        result += 1
        if i == s.startIndex { break }
        i = s.index(before: i)
    }
    return result
}
