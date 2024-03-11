defmodule Elixir02.Repo do
  use Ecto.Repo,
    otp_app: :elixir02,
    adapter: Ecto.Adapters.SQLite3
end
