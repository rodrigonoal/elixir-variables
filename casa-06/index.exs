meters = 30000
seconds = 3600

defmodule Math do
  def speedInKm(m, s) do
  speed = (m / s) * 3.6
  Float.round(speed)
  end
end

IO.puts(Math.speedInKm(meters, seconds))
