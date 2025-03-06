class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        // explicitly handle the case where n is 1
        guard n != 1 else { return true }
        // check if n is positive and even
        guard n > 0 && (n % 2 == 0) else { return false }

        var power: Int = 2 // current power of two
        
        // multiply power by 2 until it reaches or exceeds n
        while power < n {
            power *= 2
        }

        // return true if power matches n
        return power == n
    }
}
