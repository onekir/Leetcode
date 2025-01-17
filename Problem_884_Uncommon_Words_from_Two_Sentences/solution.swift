class Solution {
    func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
        var dict = [String: Int]()
        var commonS = s1.split(separator: " ") + s2.split(separator: " ")
        
        for word in commonS  {
            dict[String(word), default: 0] += 1
        }
        
        return Array(dict.filter{ $0.value == 1 }.keys)
    }
}
