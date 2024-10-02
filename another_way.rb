def picker(prices)
  # Initialize variables
  buy = 0
  sell = 0
  profit = 0
  # Loop through each day
  prices.each_with_index do |buy_price, buy_day|
    # Loop through each day after the buy day
    # to find the best sell day
    prices.each_with_index do |sell_price, sell_day|
      # If the sell day is after the buy day
      # and the sell day is after the current sell day
      if sell_day > buy_day
        # If the profit is greater than the current profit
        if sell_price - buy_price > profit
          # Set the buy day, sell day, and profit
          buy = buy_day
          sell = sell_day
        end
      end
    end
  end
  puts "Buy on day #{buy} and sell on day #{sell}"
  puts "For a profit of $#{prices[sell] - prices[buy]} per share"
end

picker([17, 3, 6, 9, 8, 15, 6, 1, 10])

