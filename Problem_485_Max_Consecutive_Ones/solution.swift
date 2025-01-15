class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxCount = 0
        var count = 0
      
        for num in nums {
            if num == 1 {
                count += 1
                if maxCount < count {
                    maxCount = count
                }
            } else {
                count = 0
            }
        }
      
        return maxCount
    }
}
