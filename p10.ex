defmodule M do


  def mixit(l1, l2) do
    mixjoin(l1, l2, [])
  end


      # l1 = ["a","b","c"]
      # l2 = [1,2,3]
      # newList =   List.insert_at(l1,1,List.first(l2))
      # delete_list = List.delete_at(l2, 0)
      # newList2 =   List.insert_at(newList,3,List.first(delete_list))
      # newdelete_list = List.delete_at(delete_list,0)
      # List.insert_at(newList2,5,List.first(newdelete_list))


      def mixjoin([],_,final), do: final
      def mixjoin(l1,l2,final)  do
        newFinal = [List.first(l1)] ++ [List.first(l2)]
        final++ mixjoin(List.delete_at(l1,0), List.delete_at(l2,0) , newFinal )
      end

end
