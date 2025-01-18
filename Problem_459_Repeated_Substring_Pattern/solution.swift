class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        var doubled = s + s
        
        let range = doubled.index(doubled.startIndex, offsetBy: 1)..<doubled.index(doubled.endIndex, offsetBy: -1)

        return doubled[range].contains(s)
    }
}
