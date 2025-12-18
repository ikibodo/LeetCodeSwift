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

func isBalanced(_ root: TreeNode?) -> Bool {
    func height(_ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }
        let lh = height(node.left)
        if lh == -1 { return -1 }
        let rh = height(node.right)
        if rh == -1 { return -1 }
        if abs(lh - rh) > 1 { return -1 }
        return max(lh, rh) + 1
    }
    return height(root) != -1
}
