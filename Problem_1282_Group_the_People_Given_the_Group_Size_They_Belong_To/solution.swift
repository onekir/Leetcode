// Time Complexity: O(N log N)
// Space Complexity: O(N)

class Solution {
    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        // sort groupSizes while keeping track of original indices
        var sortedGroupSizes = groupSizes.enumerated().sorted(by: { $0.element < $1.element })
        
        var groupList: [[Int]] = []
        var group: [Int] = []
        
        // iterate through sorted array to form groups
        for i in 0..<sortedGroupSizes.count - 1 {
            group.append(sortedGroupSizes[i].offset)
            
            // if group size changes or the current group is full, add it to groupList
            if sortedGroupSizes[i].element != sortedGroupSizes[i + 1].element || group.count == sortedGroupSizes[i].element {
                groupList.append(group)
                group = []
            }
        }
        
        // add the last element to the final group
        group.append(sortedGroupSizes.last?.offset ?? 0)
        groupList.append(group)
        
        return groupList
    }
}
