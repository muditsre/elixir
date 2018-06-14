defmodule Samplemap do
 def country(name) do
   cmap= %{"India"=> "Delhi", "USA"=>"DC", "Pakistan"=>"Karachi"}
   result=Map.get(cmap, name)
   if result==nil do
     serchinval(Map.to_list(cmap), name)
   else
     result
   end
 end

 defp serchinval(clist, name) do
   newr=Enum.find(clist, fn(x) -> elem(x, 1) == name end)
   if newr==nil do
     "Invalid entry"
   else
     elem(newr, 0)
   end
 end
end
