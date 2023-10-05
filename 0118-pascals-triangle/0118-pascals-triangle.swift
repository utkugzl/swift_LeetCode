class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle = [[Int]]()

        for i in 0..<numRows {
            var row = [Int]()
        
            for j in 0...i {
                if j == 0 || j == i {
                    row.append(1)
                } else {
                    let num = triangle[i-1][j-1] + triangle[i-1][j]
                    row.append(num)
                }
            }   
        
            triangle.append(row)
        }
        return triangle
    }
}