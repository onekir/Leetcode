class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var result: Bool = false
        var dict = [Int:Int]()
        
        for num in arr {
            dict[num,default: 0] += 1
        }
        
        if dict.values.count == Set(dict.values).count {
            result = true
        }
        
        return result
    }
}
