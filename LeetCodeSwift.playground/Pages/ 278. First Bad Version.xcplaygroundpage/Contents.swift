let firstBad = 4
func isBadVersion(_ version: Int) -> Bool {
    return version >= firstBad
}

func firstBadVersion(_ n: Int) -> Int {
    var l = 1
    var h = n
    while l < h {
        let mid = l + (h - l) / 2
        if isBadVersion(mid) {
            h = mid
        } else {
            l = mid + 1
        }
    }
    return l
}
