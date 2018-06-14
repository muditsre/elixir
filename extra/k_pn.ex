defmodule CustomPrime do
 def numAt(n) do
   List.last(list(n, 0))
 end

 def list(0, _), do: []
 def list(limit, n) do
   if isP(n) do
     [n]++list(limit-1, n+1)
   else
     []++list(limit, n+1)
   end
 end

 def isP(num) when num < 2, do: false
 def isP(num) when num >= 2, do: primeLoop(num, num-1, true)

 def primeLoop(_, i, result) when i<=2, do: result
 def primeLoop(num, i, result) when rem(num, i)==0, do: primeLoop(num, i-1, false)
 def primeLoop(num, i, result) when rem(num, i)!=0, do: primeLoop(num, i-1, result)
end
