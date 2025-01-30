// Time Complexity: O(n log n), Space Complexity: O(n)

// Recursively splits the string at the first character that does not have both uppercase and lowercase versions, returning the longest nice substring from the two halves

class Solution {
    func longestNiceSubstring(_ s: String) -> String {
        guard s.count > 1 else {
            return ""
        }
        
        let chars = Array(s)
        let charSet = Set(chars)
        
        for (index, char) in chars.enumerated() {
            // check if both lowercase and uppercase versions exist
            if charSet.contains(Character(char.lowercased())) && charSet.contains(Character(char.uppercased())) {
                continue // valid character, continue checking
            }
            
            // split the string into two parts and recursively find the longest nice substring
            let leftSubstring = longestNiceSubstring(String(chars[0..<index]))
            let rightSubstring = longestNiceSubstring(String(chars[(index+1)...]))
            
            // return the longer nice substring
            return leftSubstring.count >= rightSubstring.count ? leftSubstring : rightSubstring
        }
        
        // if all characters have both cases, return the entire string
        return s
    }
}
