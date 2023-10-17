class Solution {
    func maxProfit(_ prices: [Int]) -> Int {

        if prices.isEmpty {
            return 0
        }

        var minPrice = prices[0]
        var maxProfit = 0

        for price in prices {
        
            if price < minPrice {
                minPrice = price
            }
        
            let profit = price - minPrice
            if profit > maxProfit {
                maxProfit = profit
            }  
        }

        return maxProfit
    }
}