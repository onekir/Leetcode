class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var max = Int.min
        var maxIndex: Int = 0
        var secondMax = Int.min
        
        for i in 0..<nums.count {
            if nums[i] > max {
                max = nums[i]
                maxIndex = i
            }
        }
        
        for num in nums {
            if num > secondMax && num < max {
                secondMax = num
            }
        }

        return max >= 2 * secondMax ? maxIndex : -1
    }
}
