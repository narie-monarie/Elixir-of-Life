defmodule ElixirRest.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :decription, :string
    field :title, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :decription, :body])
    |> validate_required([:title, :decription, :body])
  end
end
