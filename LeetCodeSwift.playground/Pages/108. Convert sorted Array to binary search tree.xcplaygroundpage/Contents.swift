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

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    guard !nums.isEmpty else { return nil }
    var mid = nums.count / 2
    var node = TreeNode(nums[mid])
    node.left = sortedArrayToBST(Array(nums[0..<mid]))
    node.right = sortedArrayToBST(Array(nums[(mid + 1)..<nums.count]))
    return node
}
