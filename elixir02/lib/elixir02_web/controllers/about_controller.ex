defmodule Elixir02Web.AboutController do
  use Elixir02Web, :controller

  def about(conn, _params) do
    render(conn, :about)
  end
end
