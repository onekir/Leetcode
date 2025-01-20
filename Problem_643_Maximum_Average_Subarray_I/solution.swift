class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        // calculate the sum of the first k elements
        var windowSum: Int = nums[0..<k].reduce(0, +)
        var maxSum: Int = windowSum
        
        // use a sliding window: add the next element and remove the first one
        for i in k..<nums.count {
            windowSum += nums[i] - nums[i - k]
            maxSum = max(maxSum, windowSum)
        }
        
        // return the max average value
        return Double(maxSum) / Double(k)
    }
}
