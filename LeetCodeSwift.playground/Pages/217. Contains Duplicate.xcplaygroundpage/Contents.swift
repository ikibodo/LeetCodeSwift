func containsDuplicate(_ nums: [Int]) -> Bool {
    let set = Set(nums)
    return set.count != nums.count
}
