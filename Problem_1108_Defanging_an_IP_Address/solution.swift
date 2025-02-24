// Time Complexity: O(n)
// Space Complexity: O(n) 

class Solution {
    func defangIPaddr(_ address: String) -> String {
        var result: String = ""
    
        for char in address {
            if char == "." {
                result += "[.]"
            } else {
                result += String(char)
            }
        }
            
        return result
    }
}
