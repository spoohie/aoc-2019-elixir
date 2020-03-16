defmodule Aoc.Parser do

    def parse(command, options)

    def parse(name, [delimiter]) do
        "#{name}"
        |> parse_filename()
        |> read_file()
        |> parse_items(delimiter)
    end

    def parse(name, [delimiter, :int]) do
        parse(name, [delimiter])
        |> Enum.map(&String.to_integer/1)
    end

    defp parse_filename(name) do
        Regex.run(~r{Day\d+}, name)
        |> List.first()
        |> String.downcase()
        |> (&("input/" <> &1 <> ".txt")).()
    end

    defp read_file(file) do
        {:ok, input} = File.read(file)
        input
    end

    defp parse_items(data, delimiter) do
        d = case delimiter do
            :nl -> "\n"
            :cm -> ","
        end
        String.split(data, d, trim: true)
    end
end