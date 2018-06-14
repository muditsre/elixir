defmodule RepeatNumber do
    def repeat_number(k \\ 2) do
      mylist = [4,5,2,5,4,3,1,3,4]
      mylist |> IO.inspect(label: "List")
      |> Enum.sort
      |> Enum.chunk_by(fn arg -> arg end)
      |> Enum.map(fn arg -> if length(arg) > k-1  do Enum.at(arg, 0)   end end)
      |> Enum.filter(fn arg -> if arg != nil  do  arg    end end)
      |> Enum.join(" ")
    end
end
