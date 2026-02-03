class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    let dummy = ListNode(0)
    dummy.next = head
    var prev: ListNode? = dummy
    var curr = head
    
    while let node = curr {
        if node.val == val {
            prev?.next = node.next
        } else {
            prev = node
        }
        curr = node.next
    }
    return dummy.next
}
