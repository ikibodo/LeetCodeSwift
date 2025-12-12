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

func isSymmetric(_ root: TreeNode?) -> Bool {
    func isMirror(_ a: TreeNode?, _ b: TreeNode?) -> Bool {
        if a == nil && b == nil { return true }
        if a == nil || b == nil { return false }
        if a!.val != b!.val { return false }
        return isMirror(a!.left, b!.right) && isMirror(a!.right, b!.left)
    }
    return isMirror(root?.left, root?.right)
}
