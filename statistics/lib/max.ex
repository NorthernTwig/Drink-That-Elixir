defmodule Max do
  def get_max(numbers) do
    compare(numbers)
  end

  def compare([current|remainder]) do
    next = List.first(remainder)
    new_list = if ( current > next ), do: List.replace_at(remainder, 0, current), else: remainder
    if (length(remainder) === 1), do: current, else: compare(new_list)
  end

  def compare([]), do: nil
end