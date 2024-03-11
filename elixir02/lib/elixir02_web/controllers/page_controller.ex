defmodule Elixir02Web.PageController do
  use Elixir02Web, :controller

  def home(conn, _params) do
    # render(conn, :home, layout: false)
    send_resp(conn, 200, "hello")
  end
end
