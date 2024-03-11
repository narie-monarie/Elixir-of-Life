defmodule ElixirRestWeb.UserJSON do
  alias ElixirRest.Accounts.User
  alias ElixirRest.Posts.Post

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{data: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{data: data(user)}
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      email: user.email,
      created_at: user.inserted_at,
      posts: for(post <- user.posts, do: post_data(post))
    }
  end

  defp post_data(%Post{} = post) do
    %{
      id: post.id,
      title: post.title,
      description: post.decription,
      body: post.body,
      created_at: post.inserted_at,
      updated_at: post.updated_at
    }
  end
end
