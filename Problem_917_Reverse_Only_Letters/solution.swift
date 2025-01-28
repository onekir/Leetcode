// Time Complexity: O(n)
// Space Complexity: O(n)

class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        // convert the string into an array of characters
        var strArr: [Character] = Array(s)
        // filter letters and reverse their order
        var reversedArr: [Character] = strArr.filter{$0.isLetter}.reversed()
        
        var j: Int = 0 // index for the reversed letters
        
        for i in 0..<strArr.count {
            // replace letters with reversed ones, keep non-letters unchanged
            if strArr[i].isLetter {
                strArr[i] = reversedArr[j]
                j += 1
            }
        }
        
        // convert the modified character array back to a string
        return String(strArr)
    }
}
