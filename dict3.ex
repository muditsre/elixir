
defmodule Dicts do
  def new_dict(dict, c) do
    IO.inspect dict
        value =
          dict
          |> Enum.to_list
          |> Enum.filter(  fn (x)  ->   (elem(x,0) ==c || elem(x,1) == c) end )

        [hd|value1] =  value
          if elem(hd,0)==c do
            elem(hd,1)
          else
            elem(hd,0)
          end
  end
end
