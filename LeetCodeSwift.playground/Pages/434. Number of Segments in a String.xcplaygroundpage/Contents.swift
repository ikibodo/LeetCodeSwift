// Time: O(n)
// Space: O(1)
func countSegments(_ s: String) -> Int {
    var result = 0
    var prevChar: Character = " "
    
    for char in s {
        if char != " " && prevChar == " "  {
            result += 1
        }
        prevChar = char
    }
    
    return result
}
