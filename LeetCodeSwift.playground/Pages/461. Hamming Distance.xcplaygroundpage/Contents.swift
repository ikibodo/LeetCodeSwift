// Time: O(1)
// Space: O(1)

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    return (x ^ y).nonzeroBitCount
}


// Time: O(32) = O(1)
// Space: O(1)

func hammingDistance1(_ x: Int, _ y: Int) -> Int {
    var n = x ^ y
    var count = 0
    
    while n > 0 {
        count += n & 1
        n >>= 1
    }
    
    return count
}

// Time: O(k),  k ≤ 32
// Space: O(1)
func hammingDistance2(_ x: Int, _ y: Int) -> Int {
    var n = x ^ y
    var count = 0
    
    while n > 0 {
        n = n & (n - 1)
        count += 1
    }
    
    return count
}
