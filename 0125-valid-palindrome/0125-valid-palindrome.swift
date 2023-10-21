class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var cleanedString = ""
        for chars in s {
            if chars.isLetter || chars.isNumber {
                cleanedString.append(chars.lowercased())
            }
        }
        return String(cleanedString.reversed()) == cleanedString
    }
}