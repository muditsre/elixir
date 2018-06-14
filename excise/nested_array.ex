defmodule M do

      def a do
        users = [
          john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
          mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
        ]
          lang = Enum.at(users[:john][:languages],0)

      end
end
