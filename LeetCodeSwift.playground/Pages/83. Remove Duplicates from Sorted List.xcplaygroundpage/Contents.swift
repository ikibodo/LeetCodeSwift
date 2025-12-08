class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    guard let head = head else { return nil }
    var current: ListNode? = head
    while let node = current, let next = node.next {
        if node.val == next.val {
            node.next = next.next
        } else {
            current = next
        }
    }
    return head
}
