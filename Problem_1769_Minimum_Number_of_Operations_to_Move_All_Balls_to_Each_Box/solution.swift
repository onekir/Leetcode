// Time Complexity: O(n)
// Space Complexity: O(n)

class Solution {
    func minOperations(_ boxes: String) -> [Int] {
        var boxesArray = Array(boxes) // convert string to array
        let n = boxesArray.count
        var result: [Int] = Array(repeating: 0, count: n) // store final moves count
        var balls = 0 // count of encountered balls
        var moves = 0 // accumulated moves

        // left pass: calculate moves from left side
        for i in 0..<n {
            result[i] += moves // add moves from left side
            if boxesArray[i] == "1" {
                balls += 1 // increase count of balls
            }
            moves += balls // update the move count for the next index
        }

        // reset for right pass
        balls = 0
        moves = 0

        // right pass: calculate moves from right side
        for i in stride(from: n - 1, through: 0, by: -1) {
            result[i] += moves
            if boxesArray[i] == "1" {
                balls += 1
            }
            moves += balls
        }

        return result
    }
}
