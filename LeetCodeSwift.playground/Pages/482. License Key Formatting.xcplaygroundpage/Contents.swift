// Time: O(n)
// Space: O(n)

func licenseKeyFormatting2(_ s: String, _ k: Int) -> String {
    var result = [Character]()
    var sFiltered = s.uppercased().filter { $0 != "-" }
    var count = k
    
    for char in sFiltered.reversed() {
        result.append(char)
        count -= 1
        if count == 0 {
            result.append("-")
            count = k
        }
    }
    if result.last == "-" {
        result.removeLast()
    }
    return String(result.reversed())
}
