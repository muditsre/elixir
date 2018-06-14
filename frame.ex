defmodule F do

  def m do
    list = ["Hello", "World", "in", "a", "frame"]
    IO.puts "**********"
    Enum.map(list , fn(x) -> IO.puts "* #{x} *" end)
    IO.puts "**********"
  end

def main do
  F.m
end

end
