defmodule Elixir02Web.HelloHTML do
  use Elixir02Web, :html

  embed_templates "hello_html/*"

  attr :messenger, :string, required: true

  def greet(assigns) do
    ~H"""
    <h2>Hello, <%= @messenger %>!</h2>
    """
  end
end
