class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var count: Int = matrix.first?.count ?? 0
        var transposedMatrix: [[Int]] = Array(repeating: [], count: count)
        
        for i in 0..<count {
            for arr in matrix {
                transposedMatrix[i].append(arr[i])
            }
        }
        
        return transposedMatrix
    }
}
