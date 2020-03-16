defmodule Aoc.Day1_1 do

    def run do
        Aoc.Parser.parse(__MODULE__, [:nl, :int])
        |> Stream.map(&additional_fuel/1)
        |> Enum.sum
        |> IO.puts
    end

    defp additional_fuel(fuel) do
        div(fuel, 3) - 2
    end
end