class Solution {
    func countLargestGroup(_ n: Int) -> Int {
        var groups: [Int: Int] = [:] // dictionary to store group sizes based on digit sum
    
        for num in 1...n {
            if num < 10 {
                // if the number is a single digit, its sum is itself
                groups[num, default: 0] += 1
            } else {
                var numCopy: Int = num
                var sum: Int = 0
                
                // calculate the sum of digits
                while numCopy > 0 {
                    sum += numCopy % 10
                    numCopy = numCopy / 10
                }
              
                // increment the count of numbers belonging to this digit sum group
                groups[sum, default: 0] += 1
            }
        }

        // find the maximum group size
        let maxGroupSize = groups.values.max(by: {$0 < $1})
        
        // filter groups that have the maximum size
        let largestGroupsCount = groups.filter{ $0.value == maxGroupSize }
        
        return largestGroupsCount.count
    }
}
