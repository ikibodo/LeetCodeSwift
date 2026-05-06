// Time: O(n)
// Space: O(1)

func thirdMax(_ nums: [Int]) -> Int {
    var first: Int? = nil
    var second: Int? = nil
    var third: Int? = nil
    
    for x in nums {
        if first == x || second == x || third == x { continue }
        if first == nil || x > first! {
            third = second
            second = first
            first = x
        } else if second == nil || x > second! {
            third = second
            second = x
        } else if third == nil || x > third! {
            third = x
        }
    }
    
    return third ?? first!
}
