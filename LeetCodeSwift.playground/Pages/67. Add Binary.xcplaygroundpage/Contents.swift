func addBinary(_ a: String, _ b: String) -> String {
    let charsA = Array(a)
    let charsB = Array(b)
    var i = charsA.count - 1
    var j = charsB.count - 1
    var carry = 0
    var result: [Character] = []
    while i >= 0 || j >= 0 || carry > 0 {
        var sum = carry
        if i >= 0 {
            sum += charsA[i] == "1" ? 1 : 0
            i -= 1
        }
        if j >= 0 {
            sum += charsB[j] == "1" ? 1 : 0
            j -= 1
        }
        result.append(sum % 2 == 0 ? "0" : "1")
        carry = sum / 2
    }
    return String(result.reversed())
}
