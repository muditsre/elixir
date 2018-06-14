defmodule R do
  def checklist(list \\ []) do
    orignal = Enum.join(list, "") |> IO.inspect(label: "Orignal String")
    reversed = orignal |> String.reverse() |> IO.inspect(label: "Reversed String")

    if orignal == reversed do
      true
    else
      false
    end
  end

  def m do
    R.checklist(["ab", "b", "ba"])
  end
end
