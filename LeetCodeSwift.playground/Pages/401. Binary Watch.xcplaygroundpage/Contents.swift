// Time: O(1)
// Space: O(1)
func readBinaryWatch(_ turnedOn: Int) -> [String] {
    var result: [String] = [ ]
    for h in 0..<12 {
        for m in 0..<60 {
            if h.nonzeroBitCount + m.nonzeroBitCount == turnedOn {
                result.append("\(h):\(String(format:"%02d", m))")
            }
        }
    }
    return result
}

// Manual popcount via Kernighan's bit trick
// Time: O(1)
// Space: O(1)
class Solution {
    private func popcount(_ n: Int) -> Int {
        var count = 0
        var x = n
        while x > 0 {
            x = x & (x - 1)
            count += 1
        }
        return count
    }
    func readBinaryWatch(_ turnedOn: Int) -> [String] {
        var result: [String] = [ ]
        for h in 0..<12 {
            for m in 0..<60 {
                if popcount(h) + popcount(m) == turnedOn {
                    result.append("\(h):\(String(format:"%02d", m))")
                }
            }
        }
        return result
    }
}
