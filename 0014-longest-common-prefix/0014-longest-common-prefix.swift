class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let firstString = strs.first else { return "" }

        var commonPrefix = ""
        let minLenght = strs.map { $0.count }.min() ?? 0

        for i in 0..<minLenght {
            let charControl = firstString[firstString.index(firstString.startIndex, offsetBy: i)]

            for str in strs {
                let currentChar = str[str.index(str.startIndex, offsetBy: i)]
                if currentChar != charControl { return commonPrefix }
            }
            commonPrefix.append(charControl)
        }
        
        return commonPrefix
    }
}