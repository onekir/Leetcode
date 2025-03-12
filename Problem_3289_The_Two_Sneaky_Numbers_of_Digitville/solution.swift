// Time Complexity: O(n)
// Space Complexity: O(n) 

class Solution {
    func getSneakyNumbers(_ nums: [Int]) -> [Int] {
        var dict = [Int: Int]() // dictionary to store the frequency of each number
    
        // count occurrences of each number in nums
        for num in nums {
            dict[num, default: 0] += 1
        }
        
         // filter numbers that appear exactly twice and extract their keys as an array
        let result = Array(dict.filter{ $0.value == 2}.keys)
        
        return result
    }
}
