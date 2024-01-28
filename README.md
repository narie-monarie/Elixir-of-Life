# Elixir-of-Life

- command to start elixir with some added dependancies

```sh
mix new {project_name} --sup
```

```ex
  defp deps do
    [
      # connect to 3rd party APIS
      {:httpoison, "~> 2.0"},
      # JSON encoder and decoder
      {:poison, "~> 5.0"},
      # http server communicates between elixir and web server
      {:plug_cowboy, "~> 2.0"}
    ]
  end
```

- Get the Dependencies

```sh
mix deps.get
```
