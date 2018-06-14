defmodule MatchString do
  def match_string(s \\ "Mudit", r \\ "mohit") do
    s |> IO.inspect(label: "S String")
    r |> IO.inspect(label: "R String")
    sl = s |> String.graphemes()
    rl = r |> String.graphemes()
    mixlist = sl ++ rl
    uniquestring = Enum.uniq(mixlist) |> Enum.join(" ")
    IO.puts("Unique Alphabets in both strings: #{uniquestring}")
  end
end
