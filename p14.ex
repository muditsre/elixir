defmodule L do


  def m do
      list  = ["Hello", "World", "in", "a", "frame"]
       IO.puts "*********"
        Enum.each(list, fn(word) -> IO.puts "*#{word}  *" end)
   IO.puts "*********"

  end


end
