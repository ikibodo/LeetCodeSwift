// Time: O(1)
// Space: O(1)

func toHex(_ num: Int) -> String {
        if num == 0 { return "0" }
        
        let hexChars: [Character] = ["0","1","2","3","4","5","6","7",
                                     "8","9","a","b","c","d","e","f"]
        
        var n = UInt32(bitPattern: Int32(truncatingIfNeeded: num))
        
        var result = ""
        while n != 0 {
            let digit = Int(n & 0xF)
            result.append(hexChars[digit])
            n >>= 4
        }
        
        return String(result.reversed())
    }
