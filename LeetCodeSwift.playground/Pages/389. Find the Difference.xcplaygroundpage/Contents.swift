// Time: O(n)
// Space: O(1)
func findTheDifference(_ s: String, _ t: String) -> Character {
    var xor: UInt8 = 0
    for c in s.utf8 { xor ^= c }
    for c in t.utf8 { xor ^= c }
    return Character(UnicodeScalar(xor))
}

// Time: O(n)
// Space: O(1)
func findTheDifferenceSum(_ s: String, _ t: String) -> Character {
    var sum = 0
    for ch in t.unicodeScalars {  sum += Int(ch.value) }
    for ch in s.unicodeScalars { sum -= Int(ch.value) }
    return Character(UnicodeScalar(sum)!)
}
