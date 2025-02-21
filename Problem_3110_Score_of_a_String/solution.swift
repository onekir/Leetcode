// Time Complexity: O(n)
// Space Complexity: O(1) 

class Solution {
    func scoreOfString(_ s: String) -> Int {
        var sum: Int = 0
    
        for i in s.indices where i < s.index(before: s.endIndex) {
            sum += abs(Int(s[i].asciiValue ?? 0) - Int(s[s.index(after: i)].asciiValue ?? 0))
        }
        
        return sum
    }
}
