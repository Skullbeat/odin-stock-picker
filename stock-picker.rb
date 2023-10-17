def stock_picker(prices)
    lowest = prices[0]
    lowest_index = 0
    profit = 0
    result = []
  
    prices.each_with_index do |price, index|
      # we look for the lowest price, to buy.
      if price < lowest
        lowest = price
        lowest_index = index
      end
      # We look for the highest profit and thus obtain the most expensive day (index) to sell.
      if price - lowest > profit
        profit = price - lowest
        result = [lowest_index, index]
      end
    end
    p result
  end
  
  stock_picker([17,3,6,9,15,8,6,1,10])