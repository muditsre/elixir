defmodule Account do
  def transfer_amount(123123, 123124, 100.00) do
    if amount < 5000 do
      do_transfer(from, to, amount)
      { :ok, amount }
    else
      { :error, "Invalid Transfer" }
    end
  end

  defp do_transfer(from, to, amount) do
    IO.puts "Transfer done!"
  end
end


#===================================================
defmodule Account do
  def transfer_amount(from, to, amount) do
   case amount  do
      { :ok, amount }
       when amount < 5000  -> do_transfer(from, to, amount)
      { :error, "Invalid Transfer" }
    end
  end

  defp do_transfer(_from, _to, _amount) do
    IO.puts "Transfer done!"
  end
end

from = 123123
to = 123124
amount = 100.00

Account.transfer_amount(from, to, amount)
