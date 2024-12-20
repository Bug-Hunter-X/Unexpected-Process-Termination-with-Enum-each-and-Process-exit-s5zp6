```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:found_three)
    end
    IO.puts(x)
  end)
catch
  :found_three -> IO.puts("Found 3, exiting gracefully.")
end
```