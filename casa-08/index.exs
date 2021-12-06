defmodule Circle do
  def area(radius) do
    :math.pi() * :math.pow(radius, 2)
  end

  def circumference(radius) do
    2 * :math.pi() * radius
  end
end

radius = 3

IO.puts Circle.circumference(radius)
IO.puts Circle.area(radius)
