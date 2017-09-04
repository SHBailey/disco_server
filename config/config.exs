# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :disco_server,
  ecto_repos: [DiscoServer.Repo]

# Configures the endpoint
config :disco_server, DiscoServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xDXFjgfVWKZKUy+S91870rkZoMzJ2B+8r6OdeZclmInERdHT5BUc3vaK8/nERGvc",
  render_errors: [view: DiscoServerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DiscoServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
