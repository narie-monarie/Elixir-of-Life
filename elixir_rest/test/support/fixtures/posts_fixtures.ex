defmodule ElixirRest.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirRest.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        decription: "some decription",
        title: "some title"
      })
      |> ElixirRest.Posts.create_post()

    post
  end
end
