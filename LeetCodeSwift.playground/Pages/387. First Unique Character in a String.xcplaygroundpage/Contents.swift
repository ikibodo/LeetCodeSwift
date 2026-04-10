func firstUniqChar(_ s: String) -> Int {
    var charCount = [Character: Int]()
    
    for char in s {
        charCount[char, default: 0] += 1
    }
    
    for (index, char) in s.enumerated() {
        if charCount[char] == 1 {
            return index
        }
    }
    
    return -1
}
