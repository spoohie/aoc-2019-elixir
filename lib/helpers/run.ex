defmodule Mix.Tasks.Aoc.Run do
    use Mix.Task

    @shortdoc "Run given 'day', 'part' application"
    def run([day, part]) do
        module = "Elixir.Aoc.Day" <> day <> "_" <> part
        apply(String.to_existing_atom(module), :run, [])
    end
end