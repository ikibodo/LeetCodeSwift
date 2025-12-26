func maxProfit(_ prices: [Int]) -> Int {
    var minPrice = Int.max
    var best = 0
    for p in prices {
        if p < minPrice {
            minPrice = p
        }
        let gain = p - minPrice
        if gain > best {
            best = gain
        }
    }
    return best
}
