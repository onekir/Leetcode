class Solution {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        var alphabet = [Character: Int]()
    
        // map each character in 'order' to its index for quick lookup
        for (i, char) in order.enumerated() {
            alphabet[char, default: 0] = i
        }
        
        // compare each word with the next one in the list
        for i in 0..<words.count - 1 {
            let word1: [Character] = Array(words[i])
            let word2: [Character] = Array(words[i+1])
                    
            for j in 0..<word1.count {
                if j == word2.count { // word1 is longer but has the same prefix as word2
                    return false
                }
                
                if word1[j] != word2[j] {
                    if alphabet[word1[j]] ?? 0 > alphabet[word2[j]] ?? 0 { // check alien order
                        return false
                    }
                    break // stop comparing once a difference is found
                }
            }
        }
        
        return true
    }
}
