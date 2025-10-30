func isPalindrome(_ x: Int) -> Bool {
    if x < 0 || (x % 10 == 0 && x != 0) { return false }
    var num = x
    var rev = 0
    while num > rev {
        let d = num % 10
        rev = rev * 10 + d
        num /= 10
    }
    return num == rev || num == rev / 10
}
