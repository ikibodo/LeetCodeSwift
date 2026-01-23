func convertToTitle(_ columnNumber: Int) -> String {
    var n = columnNumber
    var result = ""
    while n > 0 {
        n -= 1
        let letter = Character(UnicodeScalar(65 + (n % 26))!)
        result = String(letter) + result
        n = n / 26
    }
    return result
}
