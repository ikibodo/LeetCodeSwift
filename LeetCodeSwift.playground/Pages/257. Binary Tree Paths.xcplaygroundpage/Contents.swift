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

func binaryTreePaths(_ root: TreeNode?) -> [String] {
    guard let root = root else { return [] }
    var res: [String] = []
    var path: [Int] = []
    path.reserveCapacity(64)
    func dfs(_ node: TreeNode) {
        path.append(node.val)
        if node.left == nil && node.right == nil {
            // на листе превращаем путь в строку
            res.append(path.map(String.init).joined(separator: "->"))
        } else {
            if let l = node.left { dfs(l) }
            if let r = node.right { dfs(r) }
        }
        path.removeLast()
    }
    dfs(root)
    return res
}
