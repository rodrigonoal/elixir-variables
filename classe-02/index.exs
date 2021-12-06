f = 73

defmodule Math do
  def convertToCelsius(f) do
    c = (f - 32) * (5 / 9)
    Float.round(c)
  end
end

IO.puts(Math.convertToCelsius(f))
