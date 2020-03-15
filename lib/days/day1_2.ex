defmodule Aoc.Day1_2 do

    def run do
        data = Aoc.Parser.parse("#{__MODULE__}", [:nl, :int])
        result = Enum.reduce(data, 0, fn d, acc -> calculate_fuel(d) + acc end)
        IO.puts(result)
    end

    defp calculate_fuel(fuel) do
        additional_fuel = div(fuel, 3) - 2
        if(additional_fuel < 0) do
            0
        else
            additional_fuel + calculate_fuel(additional_fuel)
        end
    end
end