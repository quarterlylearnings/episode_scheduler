# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :episode_scheduler,
  generators: [timestamp_type: :utc_datetime]

# Configures the endpoint
config :episode_scheduler, EpisodeSchedulerWeb.Endpoint,
  url: [host: "localhost"],
  adapter: Phoenix.Endpoint.Cowboy2Adapter,
  render_errors: [
    formats: [json: EpisodeSchedulerWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: EpisodeScheduler.PubSub,
  live_view: [signing_salt: "+TvDLZe3"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
