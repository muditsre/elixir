defmodule A do



  def bal(b,a,tx)
    if tx == :d do
        (b + a)
      else
        (b - a)
    end
  end



def ba2(b,a,:d) do b + a end
def ba2(b,a,:w) do b - a end


end
