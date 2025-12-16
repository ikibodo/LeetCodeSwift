class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func maxDepth(_ root: TreeNode?) -> Int {
    guard let node = root else { return 0 }
    let leftDepth = maxDepth(node.left)
    let rightDepth = maxDepth(node.right)
    return max(leftDepth, rightDepth) + 1
}
