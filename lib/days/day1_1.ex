defmodule Aoc.Day1_1 do

    def run do
        data = Aoc.Parser.parse("#{__MODULE__}", [:nl, :int])
        result = Enum.reduce(data, 0, fn d, acc -> div(d, 3) - 2 + acc end)
        IO.puts(result)
    end
end