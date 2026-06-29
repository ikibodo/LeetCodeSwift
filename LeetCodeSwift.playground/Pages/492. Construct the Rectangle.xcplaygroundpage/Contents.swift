// Time: O(√n)
// Space: O(1)

func constructRectangle(_ area: Int) -> [Int] {
    var w = Int(Double(area).squareRoot())
    while w != 0 {
        if area % w == 0 {
            return [ area/w, w ]
        } else {
            w -= 1
        }
    }
    return [ area, 1 ]
}
