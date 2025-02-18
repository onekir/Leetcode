/*
    Time Complexity: O(1)
    Space Complexity: O(1)

    In a star graph, one vertex is connected to all others, so we need to find the common vertex
    shared by at least two edges.
 
    We check whether the first vertex of the first edge (edges[0][0])
    is present in the second edge (edges[1]).
    If true, then it is the center of the star graph.
    Otherwise, the center must be the second vertex of the first edge (edges[0][1]).
*/
 
class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        edges[1].contains(edges[0][0]) ? edges[0][0] : edges[0][1]
    }
}
