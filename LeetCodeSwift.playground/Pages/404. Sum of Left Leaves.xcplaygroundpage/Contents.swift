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

func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
    guard let node = root else { return 0 }
    var sum = 0
    if let left = node.left, left.left == nil, left.right == nil {
        sum += left.val
    }
    return sum + sumOfLeftLeaves(node.left) + sumOfLeftLeaves(node.right)
}
