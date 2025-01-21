class Solution {
    func findLucky(_ arr: [Int]) -> Int {
        // initialize the maximum lucky number to -1 (default for no lucky number found)
        var maxNum: Int = -1
        
        // create a dictionary to count the frequency of each number in the array
        var dict = [Int: Int]()
        
        // fill the dictionary with the frequency of each number
        for num in arr {
            dict[num, default: 0] += 1
        }
        
        // iterate through the dictionary to find the largest lucky number
        for (key, value) in dict {
            if key == value && maxNum < key {
                maxNum = key
            }
        }
        
        return maxNum
    }
}
