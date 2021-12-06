weight = 76
height = 1.79

defmodule Math do
  def imc(height, weight) do
    imc = weight / (height * height)
    Float.round(imc, 2)
  end
end

IO.puts(Math.imc(height, weight))
