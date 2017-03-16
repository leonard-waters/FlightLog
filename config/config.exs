# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :flightlog,
  ecto_repos: [Flightlog.Repo]

# Configures the endpoint
config :flightlog, Flightlog.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "24mroOXrdgI78wSHqPC/bD/AnvEOOjSk4dc4L/J8XHcarwjB0wx+YcWGVZlsY3it",
  render_errors: [view: Flightlog.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Flightlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
