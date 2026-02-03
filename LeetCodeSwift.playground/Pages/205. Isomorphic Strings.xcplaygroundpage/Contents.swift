func isIsomorphic(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }
    
    var mapST = [Character: Character]()
    var mapTS = [Character: Character]()
    
    let sChars = Array(s)
    let tChars = Array(t)
    
    for i in 0..<sChars.count {
        let sChar = sChars[i]
        let tChar = tChars[i]
        
        if let mopped = mapST[sChar] {
            if mopped != tChar { return false }
        } else {
            mapST[sChar] = tChar
        }
        
        if let mopped = mapTS[tChar] {
            if mopped != sChar { return false }
        } else {
            mapTS[tChar] = sChar
        }
    }
    
    return true
}
