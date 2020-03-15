defmodule Parser do

    def parse(command)

    def parse({:nl, modulename}) do
        modulename
        |> parse_filename()
        |> read_file()
        |> parse_newline()
        |> to_int()
    end

    # def parse({:sp, file})

    def parse_filename(modulename) do
        modulename
        |> String.slice(11..14)
        |> String.downcase()
        |> (&("input/" <> &1 <> ".txt")).()
    end

    def read_file(file) do
        {:ok, input} = File.read(file)
        input
    end

    def parse_newline(data) do
        String.split(data, "\n", trim: true)
    end

    def to_int(data) do
        Enum.map(data, &String.to_integer/1)
    end
end