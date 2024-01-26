defmodule Drop do
  @doc """
  these are called atoms, like pattern matching
  """
  def multiplyings(:moon, num) when num >= 0 do
    num * num * 1.2
  end

  @doc """
  these are called tuples, like pattern matching
  """
  def multiplyings({:earth, num}) when num >= 0 do
    num * num * 1.3
  end

  def fall_velocity(planemo, distance) when distance >= 0 do
    gravity =
      case planemo do
        :earth when distance >= 0 -> 9.8
        :moon when distance >= 0 -> 1.6
        :mars when distance >= 0 -> 3.71
      end

    velocity = :math.sqrt(2 * gravity * distance)

    if velocity > 20 do
      IO.puts("look below")
    else
      IO.puts("Reasonable...")
    end
  end

  def countdown(from) when from > 0 do
    IO.inspect(from)
    countdown(from - 1)
  end

  def countdown(_from) do
    IO.puts("blastoff!")
  end
end
