defmodule Math do
  require Integer

  def pow(_, 0), do: 1
  def pow(x, n) when Integer.is_odd(n), do: x * pow(x, n - 1)

  def pow(x, n) do
    result = pow(x, div(n, 2))
    result * result
  end
end

defmodule Rate do
  def compoundRate(c, m, t) do
    rate = c * Math.pow(1 + t, m)
    Float.round(rate)
  end
end

capital = 1000
months = 5
tax = 0.125

IO.puts(Rate.compoundRate(capital, months, tax))
