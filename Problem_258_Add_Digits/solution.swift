// Time Complexity: O(1)
// Space Complexity: O(1)

class Solution {
    func addDigits(_ num: Int) -> Int {
        if num == 0 {
            return 0
        } else if num % 9 == 0 {
            return 9
        } else {
            return num % 9
        }
    }
}
