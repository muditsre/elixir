defmodule Num do
  def rProduct(a) when a < 2, do: 1
  def rProduct(a) do
    a+rProduct(a-1)
  end
end
