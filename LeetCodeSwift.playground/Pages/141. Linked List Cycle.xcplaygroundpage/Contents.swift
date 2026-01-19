class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}

func hasCycle(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head
    while let f1 = fast, let f2 = f1.next {
        slow = slow?.next
        fast = f2.next
        if slow === fast { return true }
    }
    return false
}
