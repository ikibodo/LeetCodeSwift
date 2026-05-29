// Time: O(n)
// Space: O(n)

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    let numsSet = Set(nums)
    
    for i in 1...nums.count {
        if !numsSet.contains(i) {
            result.append(i)
        }
    }
    
    return result
}

// Time: O(n)
// Space: O(1)

func findDisappearedNumbersNegativeMarking(_ nums: [Int]) -> [Int] {
    var nums = nums
    
    for i in 0..<nums.count {
        let idx = abs(nums[i]) - 1
        if nums[idx] > 0 {
            nums[idx] = -nums[idx]
        }
    }
    
    var result = [Int]()
    for i in 0..<nums.count {
        if nums[i] > 0 {
            result.append(i + 1)
        }
    }
    
    return result
}
