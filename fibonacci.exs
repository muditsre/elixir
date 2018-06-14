defmodule Fibonacci do

  def create(_, _ , 0) , do: [] 
  def create(a,b,limit) do
   [a] ++ create(b , b+a , limit-1)
  end

end
