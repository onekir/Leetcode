// Time Complexity: O(n^2)
// Space Complexity: O(1)

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var count: Int = 0
        
        for i in 0..<nums.count - 1 {
            for j in (i+1)..<nums.count {
                if nums[i] == nums[j] {
                    count += 1
                }
            }
        }
        
        return count
    }
}
