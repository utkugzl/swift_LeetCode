class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var arrayOfWords = s.split(separator: " ")

        if let lastWord = arrayOfWords.last {
           return lastWord.count
        }

        return 0
    }
}