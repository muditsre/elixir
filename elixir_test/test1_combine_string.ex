# CombineString.combine("abcde","pqrst")
defmodule CombineString do
  def combine_string(string1 \\ "abcde", string2 \\ "pqrst") do
    string1 |> IO.inspect(label: "First String")
    string2 |> IO.inspect(label: "Second String")
    if String.length(string1) == String.length(string2) do
      myl1 = string1 |> String.graphemes()
      myl2 = string2 |> String.graphemes()
      IO.puts("Mix String is: " <> mixstring(myl1, myl2))
    else
      IO.puts("String are not same")
    end
  end

  def mixstring(l1, l2) do
    mixlist(l1, l2, []) |> Enum.join("")
  end

  def mixlist([], _, final), do: final

  def mixlist(l1, l2, final) do
    newfinal = [List.first(l1)] ++ [List.first(l2)]
    final ++ mixlist(List.delete_at(l1, 0), List.delete_at(l2, 0), newfinal)
  end
end
