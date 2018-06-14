defmodule Math do
  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end



def double_each([head | tail]) do
   [head * 2 | double_each(tail)]
 end

 def double_each([]) do
   []
 end
end


defmodule Recursion do
  def print_multiple_times(msg, n) when n <= 1 do
    IO.puts msg
    Math.sum_list([1, 2, 3], 0)
  end

  def print_multiple_times(msg, n) do
    IO.puts msg
    print_multiple_times(msg, n - 1)
  end
end

Recursion.print_multiple_times("Hello!", 3)


IO.puts "Recursion"
IO.puts Recursion.print_multiple_times("Hello" , 3)
