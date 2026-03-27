func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var counts = [Int: Int]()
    var result = [Int]()
    
    for num in nums1 {
        let current = counts[num] ?? 0
        counts[num] = current + 1
    }
    
    for num in nums2 {
        if let count = counts[num], count > 0 {
            result.append(num)
            counts[num] = count - 1
        }
    }
    return result
}
