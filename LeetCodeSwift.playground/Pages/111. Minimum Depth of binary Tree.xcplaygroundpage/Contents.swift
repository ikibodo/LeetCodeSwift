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

func minDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0}
    let leftDepth = minDepth(root.left)
    let rightDepth = minDepth(root.right)
    return (leftDepth == 0 || rightDepth == 0) ? 1 + (leftDepth + rightDepth) : 1 + min(leftDepth, rightDepth)
}
