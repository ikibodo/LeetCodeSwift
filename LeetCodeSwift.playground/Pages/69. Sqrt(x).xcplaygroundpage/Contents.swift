func mySqrt(_ x: Int) -> Int {
    if x < 2 { return x }
    var g = x
    while g > x / g {
        g = (g + x / g) / 2
    }
    return g
}
