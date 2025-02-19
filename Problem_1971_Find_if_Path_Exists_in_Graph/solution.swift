class Solution {
    func validPath(_ n: Int, _ edges: [[Int]], _ source: Int, _ destination: Int) -> Bool {
        // create an adjacency list to represent the graph
        var graph: [Int: [Int]] = [:]
        
        // build the graph from the given edges
        for edge in edges {
            let u = edge[0], v = edge[1]
            graph[u, default: []].append(v)
            graph[v, default: []].append(u)
        }
        
        // initialize queue for bfs and visited set to track visited nodes
        var queue: [Int] = [source]
        var visited: Set<Int> = [source]
        
        // use a left pointer to optimize queue operations
        var left = 0
        
        while left < queue.count {
            let node = queue[left]
            left += 1
            
            // if we reach the destination, return true
            if node == destination { return true }
            
            // explore all neighbors of the current node
            for neighbor in graph[node] ?? [] {
                if !visited.contains(neighbor) {
                    visited.insert(neighbor)
                    queue.append(neighbor)
                }
            }
        }
        
        return false
    }
}
