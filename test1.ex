defmodule M do
  def x do
    Enum.reduce(~w{J J J Y Y X X X X G G G}, %{}, fn letter, acc ->
      Map.update(acc, letter, 1, &(&1 + 1))
    end)
  end

  def c(string) do
    string
    |> String.graphemes()
    |> Enum.chunk_by(fn arg -> arg end)
    |> Enum.map(fn arg -> to_string(arg) end)
    |> Enum.reduce("", fn arg, acc ->
      acc <> to_string(String.length(arg)) <> String.first(arg)
    end)
  end

  # ===================================================
  def encode(<<char::utf8, rest::binary>>) do
    do_encode(rest, char, 1, "")
  end

  # current == last, increase the count and proceed
  defp do_encode(<<char::utf8, rest::binary>>, char, count, acc) do
    do_encode(rest, char, count + 1, acc)
  end

  # current != last, reset count, encode previous values and proceed
  defp do_encode(<<char::utf8, rest::binary>>, last, count, acc) do
    do_encode(rest, char, 1, acc <> to_string(count) <> <<last::utf8>>)
  end

  # input empty, encode final values and return
  defp do_encode("", last, count, acc) do
    acc <> to_string(count) <> <<last::utf8>>
  end
end
