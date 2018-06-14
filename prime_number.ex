defmodule PrimeNumber do


 defp start( n, p) do
    if( p > 0 ) do

      if isPrime(n , div(n,2)) do
         newValue = start(n+1, p-1)
          case newValue do
           nil ->
            [n]
           _ ->
            [n] ++ newValue
          end

       else
        start(n+1, p)
      end

    end


 end

def  start(p) do
  listOfPrime = start(2,p)
  listOfPrime |> List.last
end


def isPrime(h,h1) do
       if h1 == 1 do
         true
       else
             if rem(h,h1) == 0 do
               false
             else
               isPrime(h , (h1-1))
             end
       end
end
end
