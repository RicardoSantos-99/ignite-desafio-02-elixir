defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.filter(&is_valid/1)
    |> Enum.count()
  end

  def is_valid(item) do
    item
    |> Integer.parse()
    |> is_odd()
  end

  defp is_odd({num, ""}) when is_number(num), do: Integer.is_odd(num)

  defp is_odd(_val), do: false
end
