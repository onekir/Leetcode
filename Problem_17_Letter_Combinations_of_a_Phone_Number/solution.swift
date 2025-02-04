class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else {return []} // return empty array if input is empty
        
        var result: [String] = []
        
        // create an array of lowercase letters from 'a' to 'z'
        let alphabet = (0...25).compactMap { String(UnicodeScalar($0 + 97)) }
        var dict: [Int: [String]] = [:]
        
        // map digits (2-9) to corresponding letters from the alphabet
        var k: Int = 0
        for i in 2...9 {
            if i == 7 || i == 9 {
                dict[i, default: []] = Array(alphabet[k..<k+4])
                k += 4
            } else {
                dict[i, default: []] = Array(alphabet[k..<k+3])
                k += 3
            }
        }
        
        // handle the case when input contains only one digit
        guard digits.count != 1 else {
            if let num = Int(digits) {
                result = dict [num] ?? []
            }
            return result
        }
        
        var sets: [Set<String>] = []
        
        // convert digits into sets of corresponding letters
        for char in digits {
            if let num = Int(String(char)) {
                sets.append(Set(dict [num] ?? []))
            }
        }
        
        // generate all possible letter combinations
        result = sets.reduce(into: [""], { result, set in
            var newResult: [String] = []
            for prefix in result {
                for element in set {
                    newResult.append(prefix + element)
                }
            }
            result = newResult
        })
        
        return result
    }
}
