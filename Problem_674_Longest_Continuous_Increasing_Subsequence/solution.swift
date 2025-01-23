class Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        var count: Int = 0 // lenght of the current continuous increasing subsequence
        var maxCount: Int = 0 // lenght of the longest continuous increasing subsequence
        
        //iterating through the array to count increasing subsequences
        for i in 0..<nums.count {
            // save the previous element or Int.min for the first element
            let previousNum = i > 0 ? nums[i - 1] : Int.min
            
            // compare the current element with the previous one
            if nums[i] > previousNum {
                // increase the count for the current continuous increasing subsequence
                count += 1
            } else {
                // update the maximum count if the current subsequence is longer
                maxCount = max(maxCount, count)
                // reset the count for a new subsequence including current element
                count = 1
            }
        }
        
        // final check to consider the lenght of the last subsequence
        maxCount = max(maxCount, count)
        return maxCount
    }
}
