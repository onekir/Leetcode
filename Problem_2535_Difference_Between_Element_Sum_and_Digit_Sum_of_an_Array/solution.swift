class Solution {
    func differenceOfSum(_ nums: [Int]) -> Int {
        // calculate the sum of all elements in nums
        let sum = nums.reduce(0, +) 
    
        var digits: [Int] = []
        
        // extract individual digits from each number
        for num in nums {
            var numCopy = num
            while numCopy >= 10 {
                digits.append(numCopy % 10) // get last digit
                numCopy = numCopy / 10 // remove last digit
            }
            digits.append(numCopy)
        }

        // calculate the sum of all extracted digits
        let digitSum = digits.reduce(0, +)
        
        return abs(sum - digitSum)
    }
}
