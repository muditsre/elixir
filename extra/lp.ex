defmodule LeapYear do
 def start do
   getlist(2017, 20)
   |> IO.inspect()
 end
 def getlist(_, 0) when true, do: []
 def getlist(curyear, limit) do
   if limit > 0 && isleap(curyear) do
     [curyear] ++ getlist(curyear+1, limit-1)
   else
     getlist(curyear+1, limit)
   end
 end


 def isleap(year) when rem(year, 400) == 0, do: true
 def isleap(year) when rem(year, 100) == 0, do: false
 def isleap(year) when rem(year, 4) == 0, do: true
 def isleap(year) when year > 0,  do: false

end
