defmodule Lists do
 def mixit(l1, l2) do
   mixjoin(l1, l2, [])
 end

 def mixjoin([], _, final), do: final
 def mixjoin(l1, l2, final) do
   newfinal= [List.first(l1)] ++ [List.first(l2)]
   final++mixjoin( List.delete_at(l1, 0), List.delete_at(l2, 0), newfinal)
 end
end
