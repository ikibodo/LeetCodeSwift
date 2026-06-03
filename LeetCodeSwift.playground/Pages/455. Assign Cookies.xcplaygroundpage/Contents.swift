// Time: O(n log n + m log m)
// Space: O(n)

func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
    var g = g.sorted()
    var s = s.sorted()
    var result = 0
    var child = 0
    var cookie = 0
    
    while child < g.count && cookie < s.count {
        if s[cookie] >= g[child] {
            result += 1
            child += 1
        }
        cookie += 1
    }
    
    return result
}
