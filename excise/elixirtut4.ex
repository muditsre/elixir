defmodule M do

  def dv([]), do: nil
  def dv([head | _]), do: head

  def dv2(list) do
      if(length(list) == 0 ) do
        nil
      else
        hd(list)
      end
    end





 def day(d) do
   cond do
     d==:Monday -> M
     d==:Tuesday -> T
     true-> "invalid_day"
   end
 end

def dd(d) do
       case d do
         {1, _, _} -> "Brand New Month"
         {25, 12, _} -> "Mary Cristmas"
         {_, _, _} -> "Just a avg day"
       end
  end




end
