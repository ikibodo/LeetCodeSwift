func romanToInt(_ s: String) -> Int {
    let map: [Character: Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    let chars = Array(s)
    var result = 0
    for i in 0..<chars.count {
        let value = map[chars[i]]!
        if i + 1 < chars.count, value < map[chars[i + 1]]! {
            result -= value
        } else {
            result += value
        }
    }
    return result
}
