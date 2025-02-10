// Time Complexity: O(n)
// Space Complexity: O(1)

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxArea: Int = 0
        var left = 0
        var right = height.count - 1
        
        while left < right {
            let minHeight = min(height[left], height[right]) // find the smaller height
            maxArea = max(maxArea , minHeight * (right - left)) // calculate area and update maxArea
            
            if height[left] < height[right] {
                left += 1 // move left pointer if left height is smaller
            } else {
                right -= 1 // move right pointer otherwise
            }
        }
        
        return maxArea
    }
}
