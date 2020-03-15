defmodule Mix.Tasks.Aoc do
    use Mix.Task

    @shortdoc "Run given 'day' solutions"
    def run([day]) do
        module = "Elixir.Aoc.Day" <> day <> "_"
        apply(String.to_existing_atom(module <> "1"), :run, [])
        apply(String.to_existing_atom(module <> "2"), :run, [])
    end

    @shortdoc "Run given 'day' 'part' solution"
    def run([day, part]) do
        module = "Elixir.Aoc.Day" <> day <> "_" <> part
        apply(String.to_existing_atom(module), :run, [])
    end
end