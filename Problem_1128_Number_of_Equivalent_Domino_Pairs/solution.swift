class Solution {
    func numEquivDominoPairs(_ dominoes: [[Int]]) -> Int {
        var count = 0 // result counter
        var map = [Int: Int]() // hashmap to store frequency
        
        for domino in dominoes {
            let key = min(domino[0], domino[1]) * 10 + max(domino[0], domino[1]) // unique key
            count += map[key, default: 0] // add existing pairs
            map[key, default: 0] += 1 // update count
        }
        
        return count
    }
}
