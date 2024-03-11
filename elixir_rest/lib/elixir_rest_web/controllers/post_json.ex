defmodule ElixirRestWeb.PostJSON do
  alias ElixirRest.Posts.Post

  @doc """
  Renders a list of posts.
  """
  def index(%{posts: posts}) do
    %{posts: for(post <- posts, do: data(post))}
  end

  @doc """
  Renders a single post.
  """
  def show(%{post: post}) do
    %{data: data(post)}
  end

  defp data(%Post{} = post) do
    %{
      id: post.id,
      title: post.title,
      description: post.decription,
      body: post.body,
      user_id: post.user_id,
      created_at: post.inserted_at,
      updated_at: post.updated_at
    }
  end
end
