class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var stringNumber = String(x)
        var reversedNumber = String(stringNumber.reversed())
    
        if stringNumber == reversedNumber {
            return true
        }

        return false
    }
}