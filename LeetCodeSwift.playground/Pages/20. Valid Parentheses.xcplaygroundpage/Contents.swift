func isValid(_ s: String) -> Bool {
    var stack: [Character] = []
    for char in s {
        if char == "(" || char == "[" || char == "{" {
            stack.append(char)
        } else {
            guard let last = stack.popLast() else { return false }
            switch char {
            case ")":
                if last != "(" { return false }
            case "]":
                if last != "[" { return false }
            case "}":
                if last != "{" { return false }
            default:
                return false
            }
        }
    }
    return stack.isEmpty
}

