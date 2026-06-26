// Time: O(n)
// Space: O(1)

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var result = 0
    var count = 0
    for num in nums {
        if num == 1 {
            count += 1
            result = result > count ? result : count
        } else {
            count = 0
        }
    }
    return result
}
