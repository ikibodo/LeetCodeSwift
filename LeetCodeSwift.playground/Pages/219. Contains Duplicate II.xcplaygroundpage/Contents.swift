func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    if k == 0 { return false }
    var dic: [Int: Int] = [:]
    for (i, num) in nums.enumerated() {
        if let lastIndex = dic[num], i - lastIndex <= k { return true }
        dic[num] = i
    }
    return false
}
