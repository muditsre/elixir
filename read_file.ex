defmodule F do
  def read_file do
    {status, content} = File.read("test.txt")
    case status do
      :ok ->
        content
        # |>  Enum.each(fn(x) -> IO.puts x end)
         :error ->
        IO.puts  "NO Found"
    end
  end
end
