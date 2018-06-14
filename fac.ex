defmodule Armstrong do

def checkNumber(num) when num<1, do: 0

def checkNumber(num) do
  lst = Integer.digits(num)
  len = length(lst)
  lst |>  List.foldl( 0, fn (x, acc) -> (:math.pow(x, len) + acc) end)
end

def start(num) do
if num == checkNumber(num) do
    IO.puts "Armstorng Number"
else
  IO.puts "Not Armstorng number"
end

end

end
