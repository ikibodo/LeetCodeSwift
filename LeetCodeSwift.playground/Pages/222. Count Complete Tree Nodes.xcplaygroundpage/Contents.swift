class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    init() { self.val = 0; self.left = nil; self.right = nil; }
    init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func countNodes(_ root: TreeNode?) -> Int {
    guard let node = root else { return 0 }
    
    func height(_ n: TreeNode?, _ goLeft: Bool) -> Int {
        var h = 0, cur = n
        while cur != nil {
            h += 1
            cur = goLeft ? cur?.left : cur?.right
        }
        return h
    }
    
    let left = height(node, true)
    let right = height(node, false)
    
    if left == right {
        return (1 << left) - 1
    } else {
        return 1 + countNodes(node.left) + countNodes(node.right)
    }
}
