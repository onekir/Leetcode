class Solution {
    func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        var dict: [Int:Int] = [:]
        var remainders: [Int] = []
        var result: [Int] = []
        
        for num in arr1 {
            dict[num, default: 0] += 1
        }
        
        for num in arr2 {
            if let count = dict[num] {
                result.append(contentsOf: Array(repeating: num, count: count))
                dict[num] = nil
            }
        }
        
        for (key,value) in dict {
            remainders.append(contentsOf: Array(repeating: key, count: value))
        }

        result += remainders.sorted(by: <)
        
        return result
    }
}
