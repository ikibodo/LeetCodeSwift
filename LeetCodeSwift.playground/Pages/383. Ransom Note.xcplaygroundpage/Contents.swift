func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var charCounts: [Character: Int] = [:]
    
    for char in magazine {
        charCounts[char, default:0] += 1
    }
    
    for char in ransomNote {
        guard let count = charCounts[char], count > 0 else { return false}
        charCounts[char] = count - 1
    }
    
    return true
}
