// Time Complexity: O(n)
// Space Complexity: O(n)

class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        // check if reshaping is possible
        guard mat.count * mat[0].count == r * c else { return mat }
        
        var resultMat: [[Int]] = [] // result matrix
        var tempMat = Array(mat.joined()) // flatten the matrix into a single array
        var row: [Int] = []
        
        for i in 0..<tempMat.count {
            row.append(tempMat[i]) // add element to the row
            if row.count == c { // if row is complete, add to resultMat
                resultMat.append(row)
                row = [] // reset row
            }
        }
        
        return resultMat
    }
}
