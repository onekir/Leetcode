// Time Complexity: O(n)
// Space Complexity: O(n)

class Solution {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        var seen: Set<Int> = []
    
        // iterate through nums and check for the first duplicate
        for num in nums {
            if seen.contains(num) {
                return num // return the first repeated element
            }
            seen.insert(num)
        }
        
        return 0
    }
}
