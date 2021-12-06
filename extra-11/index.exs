defmodule Sphere do
  def pi() do
    :math.pi()
  end

  def volume(radius) do
    4 / 3 * pi() * :math.pow(radius, 3)
  end

  def response(radius) do
    volume = Float.round(volume(radius), 4)

    "The volume of an sphere of radius #{radius} is  #{volume}"
  end
end

IO.puts Sphere.response(3)
