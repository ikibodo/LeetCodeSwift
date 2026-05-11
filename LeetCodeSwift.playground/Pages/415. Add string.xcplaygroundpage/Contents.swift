// Time: O(max(n,m))
// Space: O(max(n,m))
func addStrings(_ num1: String, _ num2: String) -> String {
    let arr1 = Array(num1)
    let arr2 = Array(num2)
    
    var i = arr1.count - 1
    var j = arr2.count - 1
    var carry = 0
    var result = ""
    
    while i >= 0 || j >= 0 || carry > 0 {
        let x = (i >= 0) ? Int(String(arr1[i]))! : 0
        let y = (j >= 0) ? Int(String(arr2[j]))! : 0
        
        let sum = x + y + carry
        
        result = String(sum % 10) + result
        carry = sum / 10
        
        i -= 1
        j -= 1
    }
    return result
}

