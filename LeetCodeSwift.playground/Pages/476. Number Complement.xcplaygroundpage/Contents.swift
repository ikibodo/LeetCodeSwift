// Time: O(log n)
// Space: O(1)

func findComplement(_ num: Int) -> Int {
    var n = num
    var bit = 0
    
    while n > 0 {
        n = n / 2
        bit += 1
    }
    
    return (1 << bit) - 1 - num
}
