class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}


func isPalindrome(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head
    
    while fast?.next != nil && fast?.next?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }
    
    var secondHalf = reverse(slow?.next)
    var firstHalf = head
    
    while secondHalf != nil {
        if firstHalf?.val != secondHalf?.val {
            return false
        }
        firstHalf = firstHalf?.next
        secondHalf = secondHalf?.next
    }
    
    return true
}

func isPalindrome(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head
    while fast?.next != nil && fast?.next?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }
    var secondHalf = reverse(slow?.next)
    var firstHalf = head
    while secondHalf != nil {
        if firstHalf?.val != secondHalf?.val {
            return false
        }
        firstHalf = firstHalf?.next
        secondHalf = secondHalf?.next
    }
    return true
}

func reverse(_ head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil
    var current = head
    while current != nil {
        let nextTemp = current?.next
        current?.next = prev
        prev = current
        current = nextTemp
    }
    return prev
}
