defmodule Dicts do
  def find_caps(country) do
    dict = %{"USA"=>"Was","India"=>"Delhi","Japan"=>"Tokiyo"}
    value = dict  |>  Map.get(country, nil)
      case value  do
          nil ->
                IO.puts "Country of #{country} is " <> new_dict(Map.to_list(dict) , country)

            _ ->  "Capital of #{country} is #{value}"
        end
  end


def new_dict(dict,c) do
        value = dict
        |> Enum.filter( fn (k, v)  ->   (v == c || k == c) end )
        |> elem(0)

end




end
