func wordPattern(_ pattern: String, _ s: String) -> Bool {
    let words = s.split(separator: " ").map(String.init)
    let chars = Array(pattern)
    if words.count != chars.count { return false }
    var toWord = [Character: String]()
    var toChar = [String: Character]()
    for i in 0..<chars.count {
        let c = chars[i]
        let w = words[i]
        if let mapped = toWord[c], mapped != w { return false }
        if let mapped = toChar[w], mapped != c { return false }
        toWord[c] = w
        toChar[w] = c
    }
    return true
}
