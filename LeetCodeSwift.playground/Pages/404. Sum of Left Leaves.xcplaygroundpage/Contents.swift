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

// Time: O(n)
// Space: O(n) worst case, O(log n) average
func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
    guard let node = root else { return 0 }
    var sum = 0
    if let left = node.left, left.left == nil, left.right == nil {
        sum += left.val
    }
    return sum + sumOfLeftLeaves(node.left) + sumOfLeftLeaves(node.right)
}

// Time: O(n)
// Space: O(n) worst case, O(log n) average
func sumOfLeftLeavesIterative(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    var stack: [TreeNode] = [root]
    var result = 0
    while let node = stack.popLast() {
        if let left = node.left {
            if left.left == nil && left.right == nil {
                result += left.val
            } else {
                stack.append(left)
            }
        }
        if let right = node.right {
            stack.append(right)
        }
    }
    return result
}
