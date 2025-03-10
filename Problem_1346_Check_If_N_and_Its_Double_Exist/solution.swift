// Time Complexity: O(n)
// Space Complexity: O(n)

class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var seen: Set<Int> = [] // store visited numbers
    
        for num in arr {
            // check if num * 2 or num / 2 (if even) already exists in the set
            if seen.contains(num * 2) || (num % 2 == 0 && seen.contains(num / 2)) {
                return true
            }
            seen.insert(num) // store current number
        }
            
        return false
    }
}
