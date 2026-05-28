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
