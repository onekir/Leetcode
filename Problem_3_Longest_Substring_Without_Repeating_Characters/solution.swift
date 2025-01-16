class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLength: Int = 0
        var charArr = [Character]()
        
        for char in s {
            if let repeatingChar = charArr.firstIndex(of: char) {
                charArr.removeSubrange(0...repeatingChar)
            }
            charArr.append(char)
            maxLength = max(maxLength, charArr.count)
        }
        
        return maxLength
    }
}
