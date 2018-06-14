defmodule PrimeNumber do

 def start(_, 0), do: []
 def start( n , p) do
              if( p > 0 ) do
                      if isPrime(n , div(n,2)) do
                         [n] ++ start(n+1, p-1)
                       else
                         start(n+1, p)
                       end
              else
                    n
              end


 end

def  start(p) do
  listOfPrime = start(2,p)
  listOfPrime |> List.last
end


 def isPrime(h,h1)  when h1 == 1 , do: true
 def isPrime(h,h1)  when rem(h,h1) == 0 , do: false
 def isPrime(h,h1)  when rem(h,h1) != 0 , do: isPrime(h,(h1-1))


end
