class MyQueue {
    private var inStack: [Int] = []
    private var outStack: [Int] = []
    
    init() {}
    
    func push(_ x: Int) {
        inStack.append(x)
    }
    
    private func moveIfNeeded() {
        if outStack.isEmpty {
            while let last = inStack.popLast() {
                outStack.append(last)
            }
        }
    }
    
    func pop() -> Int {
        moveIfNeeded()
        return outStack.popLast()!
    }
    
    func peek() -> Int {
        moveIfNeeded()
        return outStack.last!
    }
    
    func empty() -> Bool {
        return inStack.isEmpty && outStack.isEmpty
    }
}
