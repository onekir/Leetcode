// Time Complexity: O(n²)
// Space Complexity: 1

class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var i = 0
        while i < arr.count {
            if arr[i] == 0 {
                arr.insert(0, at: i)
                arr.removeLast()
                i += 1
            }
            i += 1
        }
    }
}
