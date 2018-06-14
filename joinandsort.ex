defmodule C do

  def m do
    fl = [1,2,3]
    sl = [4,6,5]

    Enum.concat(fl,sl) |> Enum.sort

  end


  def n do
    fl = [1,2,3]
    sl = [4,6,5]

   fl++sl |> Enum.sort

  end

def main do
  C.n
  #C.m
end


end
