// Time Complexity: O(n)
// Space Complexity: O(n)

class Solution {
    func divisorSubstrings(_ num: Int, _ k: Int) -> Int {
        var arr: [Character] = Array(String(num)) // convert number to character array
        var count: Int = 0
        
        for i in 0...arr.count-k { // iterate over all substrings
            if let divisor = Int(String(arr[i..<i+k])), divisor != 0, num % divisor == 0 {
                count += 1 // increment count if valid divisor
            }
        }
        
        return count
    }
}
