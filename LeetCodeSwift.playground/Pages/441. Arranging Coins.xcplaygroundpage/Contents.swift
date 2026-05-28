// Time: O(n)
// Space: O(1)
func arrangeCoins(_ n: Int) -> Int {
    var rows = 0
    var coinsUsed = 0
    
    while  coinsUsed + (rows + 1) <= n  {
        rows += 1
        coinsUsed += rows
    }
    
    return rows
}

// Time: O(1)
// Space: O(1)
func arrangeCoinsQuadratic(_ n: Int) -> Int {
    return Int(((-1.0 + (1.0 + 8.0 * Double(n)).squareRoot()) / 2.0))
}
