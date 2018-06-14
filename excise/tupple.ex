defmodule A do

def m do
  book = {"pc","xx",2}
  p = elem(book,2)
  IO.puts "P #{p}"

  bx = put_elem(book , 2, 5 )
  x = elem(bx,2)
  IO.puts "X #{x}"

end

def a do
  my_list = ["E","C" ,"J" , "R"]
  my_listz =  List.insert_at(my_list, 0 , "X")
  IO.puts "L #{my_listz}"
end

end
