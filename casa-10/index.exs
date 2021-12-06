defmodule Bhaskara do
  def delta(a, b, c) do
    :math.pow(b, 2) - 4 * a * c
  end

  def solve(a, b, c) do
      deltaSqrd = :math.sqrt(delta(a, b, c))
      divisor = 2 * a
      xA = (- b + deltaSqrd) / divisor
      xB = (- b - deltaSqrd) / divisor

      {xA, xB}
  end
end

tupleX = Bhaskara.solve(2, -10, 8)

IO.puts elem(tupleX, 0)
IO.puts elem(tupleX, 1)

# 2, 12, -14
# 2, -10, 8
