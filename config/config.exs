# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :broadcaster,
  ecto_repos: [Broadcaster.Repo]

# Configures the endpoint
config :broadcaster, Broadcaster.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "q7x1Q9vClTy7HKO/0hRdGn382OSEwoM6Thvi1pmjpz5anhqgpB+9PrGErlaF3Y+8",
  render_errors: [view: Broadcaster.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Broadcaster.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
