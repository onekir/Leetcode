class Solution {
    func numberOfPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
        var count = 0
    
        for i in 0..<nums1.count {
            for j in 0..<nums2.count {
                if nums1[i] % (nums2[j] * k) == 0 {
                    count += 1
                }
            }
        }
            
        return count
    }
}
