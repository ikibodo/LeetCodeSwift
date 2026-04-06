class GuessGame {
    private var pickedNumber: Int
    
    init(pickedNumber: Int) {
        self.pickedNumber = pickedNumber
    }
    
    func guess(_ num: Int) -> Int {
        if num == pickedNumber {
            return 0
        } else if num > pickedNumber {
            return -1
        } else {
            return 1
        }
    }
}

class Solution: GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var low = 1
        var high = n
        while low <= high {
            let mid = low + (high - low) / 2
            let result = guess(mid)
            if result == 0 {
                return mid
            } else if result == -1 {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        return -1
    }
}
