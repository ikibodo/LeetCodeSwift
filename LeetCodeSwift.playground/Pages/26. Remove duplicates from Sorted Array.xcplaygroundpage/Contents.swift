func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    var k = 1
    for i in 1..<nums.count {
        if nums[i] != nums[k - 1] {
            nums[k] = nums[i]
            k += 1
        }
    }
    return k
}
