class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        // array storing morse code representations of english letters a-z
        let morseCode: [String] = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        var translationSet: Set<String> = [] // for keeping unique translations
        
        for word in words {
            var translation: String = "" // variable to store the morse translation of the word
            for char in word {
                translation += morseCode[Int(char.asciiValue ?? 0) - 97] // convert character to morse code and append
            }
            translationSet.insert(translation)
        }
        
        return translationSet.count // return the number of unique morse translations
    }
}
