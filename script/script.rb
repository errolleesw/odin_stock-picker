def stock_picker(prices)
  min_price = prices[0] # initiate the min price as the first stock price in the array
  max_profit = 0
  buy_index = 0
  sell_index = prices.length
  
  prices.each_with_index do |price, index|
    if price < min_price
      # puts "Min price = #{min_price}"
      min_price = price
      # puts "Min price = #{min_price}"

      # puts "Buy index = #{buy_index}"
      # puts "Sell index = #{sell_index}"
      if index < sell_index
        buy_index = index
      end
      # puts "Buy index = #{buy_index}"

    elsif price - min_price > max_profit
      max_profit = price - min_price
      sell_index = index
      # puts "Sell index = #{sell_index}"
    end
  end

  result = [buy_index, sell_index]
  # buy_index
end

p stock_picker([17,3,6,9,15,8,6,1,10])
