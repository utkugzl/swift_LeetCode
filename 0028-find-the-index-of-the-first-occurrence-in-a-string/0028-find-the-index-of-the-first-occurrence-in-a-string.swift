class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
       let haystackCount = haystack.count
       let needleCount = needle.count

       if !(haystack.contains(needle)) {
           return -1
       }

       for i in 0...(haystackCount - needleCount) {
           let startIndex = haystack.index(haystack.startIndex, offsetBy: i)
           let endIndex = haystack.index(startIndex, offsetBy: needleCount - 1)

           if haystack[startIndex...endIndex] == needle {
               return i
           }
       }

       return -1
    }
}