defmodule Drop do
  def multiplyings(:moon, num) when num >= 0 do
    num * num * 1.2
  end
  @doc"""
  these are called tuples, like pattern matching
  """
  def multiplyings(:earth, num) when num >= 0 do
    num * num * 1.3
  end
end
