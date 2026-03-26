func reverseVowels(_ s: String) -> String {
    let vowels = Set("aeiouAEIOU")
    var chars = Array(s)
    var left = 0
    var right = chars.count - 1
    
    while left < right {
        if !vowels.contains(chars[left]) { left += 1; continue }
        if !vowels.contains(chars[right]) { right -= 1; continue }
        chars.swapAt(left, right)
        left += 1
        right -= 1
    }
    
    return String(chars)
}
