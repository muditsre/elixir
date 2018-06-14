defmodule C do
  def m do

    my_list = [1,2,3,4,6,7,9,10]

    if Enum.member?(my_list,10) == true do
      IO.puts "Exist in the List"
    else
      IO.puts "Not Exist in List"
    end
  end

end
