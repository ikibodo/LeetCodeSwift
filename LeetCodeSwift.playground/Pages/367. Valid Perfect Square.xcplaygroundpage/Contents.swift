// Time: O(n)
// Space: O(1)
func isPerfectSquare(_ num: Int) -> Bool {
    if num == 1 { return true }
    let left = 1
    let right = num / 2
    for i in left...right {
        if i * i == num { return true }
    }
    return false
}

// Time: O(log n)
// Space: O(1)
func isPerfectSquareBS(_ num: Int) -> Bool {
    if num == 1 { return true }
    var left = 1
    var right = num / 2
    
    while left <= right {
        let mid = left + (right - left) / 2
        if mid == num / mid && num % mid == 0 {
            return true
        } else if mid < num / mid {
            left = mid + 1
        } else {
            right = mid - 1
        }//*
    }
    return false
}
