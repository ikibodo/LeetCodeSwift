func isPerfectSquare(_ num: Int) -> Bool {
    if num == 1 { return true }
    let left = 1
    let right = num / 2
    for i in left...right {
        if i * i == num { return true }
    }
    return false
}
