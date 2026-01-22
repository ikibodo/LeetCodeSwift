class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    if headA == nil || headB == nil { return nil }
    var pA = headA
    var pB = headB
    while pA !== pB {
        pA = (pA == nil) ? headB : pA?.next
        pB = (pB == nil) ? headA : pB?.next
    }
    return pA
}
