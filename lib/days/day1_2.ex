defmodule Aoc.Day1_2 do

    def run do
        Aoc.Parser.parse(__MODULE__, [:nl, :int])
        |> Stream.map(&calculate_fuel_chain/1)
        |> Enum.sum
        |> IO.puts
    end

    defp calculate_fuel_chain(fuel) do
        additional_fuel(fuel)
        |> Stream.iterate(&additional_fuel/1)
        |> Stream.take_while(&(&1 > 0))
        |> Enum.sum
    end

    defp additional_fuel(fuel) do
        div(fuel, 3) - 2
    end
end