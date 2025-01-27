// Time Complexity: O(n)
// Space Complexity: O(n)

class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        // dict for counting occurrences of nums
        var dict = [Int: Int]()
        
        // increment count for each number in nums
        for num in nums {
            dict[num, default: 0] += 1
        }
        
        // keep only numbers that appear exactly once
        dict = dict.filter{ $0.value == 1}
        
        // sum up all keys with unique counts
        return dict.keys.reduce(0, +)
    }
}
