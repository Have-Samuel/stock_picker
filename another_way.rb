def picker(prices)
  buy = 0
  sell = 0
  profit = 0
  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        if sell_price - buy_price > profit
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

