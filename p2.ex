defmodule L do

def   leap_year(year) when year <= 2020 do
          if is_leap_year?(year) do
            IO.puts(year)
          end
             leap_year(year+1)
   end




defp is_leap_year?(year) when rem(year , 400) == 0,  do:  true
defp is_leap_year?(year) when rem(year , 100) == 0,  do:  false
defp is_leap_year?(year) when rem(year , 4) == 0,    do:  true
defp is_leap_year?(_),                               do:  false

def main do
  L.leap_year(2000)

end


end
