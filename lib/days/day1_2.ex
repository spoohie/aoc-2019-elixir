defmodule Aoc.Day1_1 do

    def run do
        data = Parser.parse({:nl, "#{__MODULE__}"})
        # IO.puts("#{inspect(data)}")
        result = Enum.reduce(data, 0, fn d, acc -> div(d, 3) - 2 + acc end)
        IO.puts(result)
    end
end