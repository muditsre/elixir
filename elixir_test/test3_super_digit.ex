# SuperDigit.super_digit(9875)
defmodule SuperDigit do
  def super_digit(number \\ 9875) do
    numbersum = number |> Integer.digits() |> Enum.sum()
    if numbersum > 9 do
      super_digit(numbersum)
    else
      IO.puts("Super Digit is #{numbersum}")
    end
  end
end
