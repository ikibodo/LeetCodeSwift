func longestPalindrome(_ s: String) -> Int {
    var freq: [Character: Int] = [:]
    
    for ch in s {
        freq[ch, default: 0] += 1
    }
    
    var result = 0
    var hasOdd = false
    
    for count in freq.values {
        result += (count / 2) * 2
        if count % 2 == 1 { hasOdd = true }
    }
    
    if hasOdd { result += 1 }
    
    return result
}
