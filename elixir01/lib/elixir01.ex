defmodule Elixir01 do
  require Integer

  def create_todos do
    {favourite_number, _} = IO.gets("Enter the number you want to add, ") |> Integer.parse()

    for _ <- 1..favourite_number do
      IO.gets("Enter Tasks: ")|> String.trim()
    end
  end

  def complete_todos(tasks, task) do
    if contains?(tasks, task) do
      List.delete(tasks, task)
    else
      :task_not_found
    end
  end

  def temp_todos do
    ["eat apple", "read book", "elixir series", "excercise"]
  end

  def contains?(tasks, task) do
    Enum.member?(tasks, task)
  end

  def random_task(task) do
    [task] = Enum.take_random(task, 1)
    task
  end

  def keyword_search(tasks, word) do
    for task <- tasks, String.contains?(task, word) do
      task
    end
  end

  def for_loop do
    for i <- [1, 2, 3], do: i
    for i <- 0..30, Integer.is_even(i), do: i
    for i <- [1, 2, 3], y <- [4, 5, 6], do: i + y
  end

  def dog() do
   :dog 
  end
end
