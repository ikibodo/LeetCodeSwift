// Time: O(n)
// Space: O(n)

func repeatedSubstringPattern(_ s: String) -> Bool {
    let doubled = String((s + s).dropFirst().dropLast())
    return doubled.contains(s)
}
