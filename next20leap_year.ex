defmodule L do

   def leap_year(year)  when year <= 2092 do
              if is_leap_year?(year) == true do
                      IO.puts year
              end
              leap_year(year+1)
     end

  defp is_leap_year?(y) when rem(y, 400) == 0, do: true
  defp is_leap_year?(y) when rem(y, 100) == 0, do: false
  defp is_leap_year?(y) when rem(y, 4) == 0,   do: true
  defp is_leap_year?(_),                       do: false


  def list_leap_year(newlist , year)  when year <= 2092 do
             if is_leap_year?(year) == true do
                    newlist =   List.insert_at(newlist , -1,  year)
             end
              list_leap_year(newlist , year+1)
    end

def main do
  L.list_leap_year([],2000)
  #L.leap_year(2000)
end


end
