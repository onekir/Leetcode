// Time Complexity: O(n)
// Space Complexity: O(n)

class Solution {
    func arithmeticTriplets(_ nums: [Int], _ diff: Int) -> Int {
        var numsSet: Set<Int> = Set(nums)
        var count: Int = 0
        
        // iterate through the unique numbers in the set
        for num in numsSet {
            // check if the arithmetic triplet sequence exists
            if numsSet.contains(num + diff) && numsSet.contains(num + diff * 2) {
                count += 1
            }
        }
        
        return count
    }
}
