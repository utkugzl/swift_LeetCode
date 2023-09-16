class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var carry = 1 
    
        for i in stride(from: digits.count - 1, through: 0, by: -1) {
            let sum = digits[i] + carry
            digits[i] = sum % 10 
            carry = sum / 10 

        
            if carry == 0 {
                break
            }
        }

    
        if carry > 0 {
            digits.insert(1, at: 0)
        }

        return digits
    }
}