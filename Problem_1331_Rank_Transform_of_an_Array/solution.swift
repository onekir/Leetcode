// Time Complexity: O(n log n)
// Space Complexity: O(n)

class Solution {
    func arrayRankTransform(_ arr: [Int]) -> [Int] {
        guard !arr.isEmpty else { return [] }
    
        var result: [Int] = Array(repeating: 0, count: arr.count)
        
        // sort array while keeping original indices
        let sortedArr = arr.enumerated().sorted(by: {$0.element < $1.element})
        var rankArr: [Int] = [1]
        var rank: Int = rankArr[0]
        
        // assign ranks based on sorted order, ensuring duplicates get the same rank
        for i in 1..<sortedArr.count {
            if sortedArr[i-1].element != sortedArr[i].element  {
                rank += 1
            }
            rankArr.append(rank)
        }
        
        // map ranks back to original indices
        for i in 0..<sortedArr.count {
            result[sortedArr[i].offset] = rankArr[i]
        }
        
        return result
    }
}
