class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var stringNumber = String(x)
    
        if stringNumber == String(stringNumber.reversed()) {
            return true
        }

        return false
    }
}