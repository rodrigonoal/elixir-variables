defmodule Cilinder do
  def pi() do
    :math.pi()
  end

  def totalArea(radius, height) do
    2 * baseArea(radius) + lateralArea(radius, height)
  end

  def baseArea(radius) do
    pi() * :math.pow(radius, 2)
  end

  def lateralArea(radius, height) do
   2 * pi() * radius * height
  end
end

IO.puts Cilinder.totalArea(3, 4)
