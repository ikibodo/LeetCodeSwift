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
