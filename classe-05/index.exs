x = 1
y = 1
xX = 1
yY = 4

defmodule Math do
  def distance(x, y, xX, yY) do
  :math.sqrt(Integer.pow((xX - x), 2) + Integer.pow((yY - y), 2))
  end
end

IO.puts(Math.distance(x, y, xX, yY))
