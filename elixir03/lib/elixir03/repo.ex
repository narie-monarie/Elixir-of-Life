defmodule Elixir03.Repo do
  use Ecto.Repo,
    otp_app: :elixir03,
    adapter: Ecto.Adapters.SQLite3
end
