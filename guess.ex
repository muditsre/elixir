defmodule G do
  def guess_word do
    hints = "bred,tom,sira,jary"
    IO.puts("Hints : #{hints}")
    guess = IO.gets("Guess the word:")
    guess = String.trim(guess) |> IO.inspect(label: " Word is")

    case guess do
      "bred" ->
        IO.puts("Won")
        guess_word()

      "exit" ->
          IO.puts("Game Over, Chalo Bhago")

        _ ->
        IO.puts("Lose")
        guess_word()
    end


  end
end
