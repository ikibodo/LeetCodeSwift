// Time: O(n)
// Space: O(1)

func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
    var result = 0
    
    for i in 0..<(timeSeries.count - 1) {
        let gap = timeSeries[i + 1] - timeSeries[i]
        result += min(gap, duration)
    }
    
    result += duration
    return result
}
