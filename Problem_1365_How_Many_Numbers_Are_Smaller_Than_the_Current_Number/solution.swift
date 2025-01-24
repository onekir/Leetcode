class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        // sort nums with their original indices
        let sortedNums = nums.enumerated().sorted(by: {$0.element < $1.element})
        // array to store the results
        var result = Array(repeating: 0, count: nums.count)
        // tracks how many numbers are smaller
        var count: Int = 0
        
        for (index, pair) in sortedNums.enumerated() {
            // update count only when the current number is different from the previous one
            if index > 0 && sortedNums[index].element != sortedNums[index - 1].element {
                count = index
            }
            // assign count to the result at the original index
            result[pair.offset] = count
        }

        return result
    }
}
