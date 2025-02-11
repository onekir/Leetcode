class Solution {
    func removeOccurrences(_ s: String, _ part: String) -> String {
        var sCopy: String = s
    
        while sCopy.contains(part) {
            var range = sCopy.firstRange(of: part)
            if let range = range {
                sCopy.removeSubrange(range)
            }
        }
        
        return sCopy
    }
}
