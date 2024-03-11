defmodule Elixir03Web.ErrorJSONTest do
  use Elixir03Web.ConnCase, async: true

  test "renders 404" do
    assert Elixir03Web.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert Elixir03Web.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
