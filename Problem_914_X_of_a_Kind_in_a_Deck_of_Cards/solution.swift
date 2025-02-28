class Solution {
    
    // calculate the greatest common divisor using recursion
    func gcd(_ a: Int, _ b: Int) -> Int {
        return b == 0 ? a : gcd(b, a % b)
    }

    func hasGroupsSizeX(_ deck: [Int]) -> Bool {
        var dict = [Int: Int]()
        
        // count occurrences of each card
        for card in deck {
            dict[card, default: 0] += 1
        }
        
        // extract all frequencies/
        let frequencies = Array(dict.values)
      
        // find gcd of all frequencies
        let commonGCD = frequencies.reduce(frequencies[0]) { gcd($0, $1) }

        // return true if all groups can have at least 2 cards
        return commonGCD > 1
    }
}
