func moveZeroes(_ nums: inout [Int]) {
    var slow = 0
    for fast in 0..<nums.count {
        if nums[fast] != 0 {
            if slow != fast {
                nums.swapAt(slow, fast)
            }
            slow += 1
        }
    }
}
