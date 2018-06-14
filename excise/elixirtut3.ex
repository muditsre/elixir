defmodule M do
  def main do
      display_list()
  end


   def display_list do
      words = ["Hello","World","in","a","frame"]
      Emun.each words,fn word ->
        IO.puts word
      end
   end



end
