func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count { return false }
    var counts = [Int](repeating: 0, count: 26)
    let aAscii = Character("a").asciiValue!
    
    for char in s {
        let index = Int(char.asciiValue! - aAscii)
        counts[index] += 1
    }
    
    for char in t {
        let index = Int(char.asciiValue! - aAscii)
        counts[index] -= 1
        if counts[index] < 0 {
            return false
        }
    }
    
    return true
}
