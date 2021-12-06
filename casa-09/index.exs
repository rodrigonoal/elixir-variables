defmodule Polygon do
  def internalAngleSum(sides) do
    (sides - 2) * 180
  end

  def internalAngle(sides) do
    sum = internalAngleSum(sides)
    div(sum, sides)
  end
end

sides = 6

IO.puts Polygon.internalAngleSum(sides)
IO.puts Polygon.internalAngle(sides)
