defmodule Math do
  def discountPercentage(price, money) do
    discount = price - money
    percentage = discount * 100 / price
    Float.round(percentage)
  end
end

price = 129.99
money = 80

IO.puts(Math.discountPercentage(price, money))
