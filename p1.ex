defmodule A do

      def m do
                mylist = [1,2,3,4,5]
                if Enum.any?(mylist ,fn x -> x == 3 end)  do
                  true
                else
                  false
                end
      end
      def c do
                mylist = [1,2,3,4,5]
                if Enum.member?(mylist ,3)  do
                  true
                else
                  false
                end
      end

end
