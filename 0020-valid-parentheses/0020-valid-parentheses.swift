class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for char in s {
            if char == "(" || char == "{" || char == "[" {
                stack.append(char)
            } else if char == ")" {
                if stack.isEmpty || stack.removeLast() != "(" { return false }   
            } else if char == "}" {
                if stack.isEmpty || stack.removeLast() != "{" { return false }   
            } else if char == "]" {
                if stack.isEmpty || stack.removeLast() != "[" { return false }   
            }
        }

        return stack.isEmpty
    }
}