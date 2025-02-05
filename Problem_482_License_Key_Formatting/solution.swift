// Time Complexity: O(n)
// Space Complexity: O(n)

class Solution {
    func licenseKeyFormatting(_ s: String, _ k: Int) -> String {
        let dash: Character = "-"
        var chars: [Character] = [] // array to store characters without dashes
        var result: [Character] = [] // array to store the formatted license key

        // remove all dashes from input string
        for char in s where char != dash {
            chars.append(char)
        }
        
        let offset = chars.count % k // calculate the size of the first group
        
        // iterate through characters and insert dashes at correct positions
        for (i, char) in chars.enumerated() {
            if i > 0, (i - offset) % k == 0 {
                result.append(dash)
            }
            result.append(char)
        }
        
        return String(result).uppercased()
    }
}
