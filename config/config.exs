# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_kenya,
  ecto_repos: [ElixirKenya.Repo]

# Configures the endpoint
config :elixir_kenya, ElixirKenyaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "p56CHqX1cpVbEWXnUKA6PEdbVO0s1BO0AUXcwUrB6qnh1VguLUJKz6ilzIx7lFOZ",
  render_errors: [view: ElixirKenyaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ElixirKenya.PubSub,
  live_view: [signing_salt: "bKZwNe46"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
