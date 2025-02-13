class Solution {
    func garbageCollection(_ garbage: [String], _ travel: [Int]) -> Int {
        guard !garbage.isEmpty else { return 0 } // return if no garbage
        
        var extendedTravel: [Int] = travel
        extendedTravel.insert(0, at: 0) // add 0 at the beginning to match indices
        
        var dict = [Character: Int]() // count occurrences of each garbage type
    
        // each garbage unit takes 1 min to collect, so count occurrences
        for bin in garbage {
            for typeOfGarbage in bin {
                dict[typeOfGarbage, default: 0] += 1
            }
        }
    
        // find the last bin containing each garbage type and sum travel time to it
        for  typeOfGarbage in dict.keys  {
            for i in stride(from: garbage.count - 1, through: 0, by: -1)  {
                if garbage[i].contains(typeOfGarbage) {
                    // add travel time up to the last occurrence
                    dict[typeOfGarbage, default: 0] += extendedTravel[0...i].reduce(0, +)
                    break // stop after finding the last occurrence
                }
            }
        }

        return dict.values.reduce(0, +) // sum total time
    }
}
