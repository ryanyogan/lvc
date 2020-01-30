# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lvc,
  ecto_repos: [Lvc.Repo]

# Configures the endpoint
config :lvc, LvcWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VyOtWRWAGJznB9ARPCJgDUs+00cSrTPdniHHLU1fiZ5nKljm0zkJiuxUdVPLaVHP",
  render_errors: [view: LvcWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lvc.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "yhbpkXyPNLSe8K/BY5Vf9B6lARq1Jgt2"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
