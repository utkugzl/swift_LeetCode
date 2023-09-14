class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var targetIndex = 0

        for (index, element) in nums.enumerated() {
            if target == element {
                targetIndex = index
            } else if target > element {
                targetIndex = index + 1
            }
        }

        return targetIndex
    }
}