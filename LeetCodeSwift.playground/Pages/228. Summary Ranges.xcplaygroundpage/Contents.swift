func summaryRanges(_ nums: [Int]) -> [String] {
    var result = [String]()
    var i = 0
    while i < nums.count {
        let start = i
        while i + 1 < nums.count && nums[i + 1] == nums[i] + 1 {
            i += 1
        }
        if start == i {
            result.append("\(nums[start])")
        } else {
            result.append("\(nums[start])->\(nums[i])")
        }
        i += 1
    }
    return result
}
