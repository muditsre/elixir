defmodule Account do
  def transfer_amount(from, to, amount) do
   case amount  do
      { :ok, amount }
       when amount < 5000  -> do_transfer(from, to, amount)
      { :error, "Invalid Transfer" }
    end
  end

  defp do_transfer(_from, _to, value) do

    IO.puts "Transferred: $#{value}"
  end
end

from = 123123
to = 123124
amount = 100.00

Account.transfer_amount(from, to, amount)
