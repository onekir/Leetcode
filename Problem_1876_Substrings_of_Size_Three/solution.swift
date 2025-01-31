// Time Complexity: O(n)
// Space Complexity: O(n)

// Using a sliding window check all substrings if they contain only unique chars

class Solution {
    func countGoodSubstrings(_ s: String) -> Int {
        guard s.count >= 3 else { return 0 } // check if there is at least 1 substring with lenght of 3
    
        var k: Int = 3 // length of a substring
        var count: Int = 0 // number of good substrings
        
        var chars: [Character] = Array(s) // convert s to array of chars
        
        for i in 0...(chars.count - k) {
            var slidingWindow = chars[i..<(i + k)]
            // check if substring contains only unique chars
            if slidingWindow.count == Set(slidingWindow).count  {
                count += 1
            }
        }
        
        return count
    }
}
