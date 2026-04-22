func findTheDifference(_ s: String, _ t: String) -> Character {
    var xor: UInt8 = 0
    for c in s.utf8 { xor ^= c }
    for c in t.utf8 { xor ^= c }
    return Character(UnicodeScalar(xor))
}
