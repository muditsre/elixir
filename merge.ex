defmodule Merge do

  def merge_list(acc, [], []) do
    acc
  end

  def merge_list(acc, left, right) do
    {acc, left, right} = case {left, right} do
      {[], right} ->
        [rhead | rtail] = right
        {[rhead | acc], left, rtail}
      {left, []} ->
        [lhead | ltail] = left
        {[lhead | acc], ltail, right}
      {left, right} ->
        [lhead | ltail] = left
        [rhead | rtail] = right
        if lhead <= rhead do
          {[lhead | acc], ltail, right}
        else
          {[rhead | acc], left, rtail}
        end
    end
    merge_list(acc, left, right)
  end

end
