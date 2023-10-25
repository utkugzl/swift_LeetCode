class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var result = ""
        var n = columnNumber
    
        while n > 0 {
            n -= 1 
            let char = Character(UnicodeScalar(65 + n % 26)!)
            result = String(char) + result
            n /= 26
        }  
    
        return result
    }
}