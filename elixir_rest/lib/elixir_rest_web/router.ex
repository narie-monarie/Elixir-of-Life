defmodule ElixirRestWeb.Router do
  use ElixirRestWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {ElixirRestWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ElixirRestWeb do
    pipe_through :browser

    get "/", PageController, :home
  end

  scope "/api", ElixirRestWeb do
    pipe_through :api
    resources "/posts", PostController, except: [:new, :edit]
    resources "/users", UserController,  except: [:new, :edit]
  end

  # Other scopes may use custom stacks.
  # scope "/api", ElixirRestWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:elixir_rest, :dev_routes) do
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: ElixirRestWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
