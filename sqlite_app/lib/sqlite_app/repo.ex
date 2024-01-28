defmodule SqliteApp.Repo do
  use Ecto.Repo,
    otp_app: :sqlite_app,
    adapter: Ecto.Adapters.SQLite3
end
