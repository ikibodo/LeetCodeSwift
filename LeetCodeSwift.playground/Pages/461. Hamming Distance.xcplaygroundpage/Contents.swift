// Time: O(1)
// Space: O(1)

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    return (x ^ y).nonzeroBitCount
}
