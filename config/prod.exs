import Config

# Do not print debug messages in production
config :logger, level: :info

# Runtime production configuration, including reading
# of environment variables, is done on config/runtime.exs.
config :episode_scheduler, EpisodeSchedulerWeb.Endpoint,
    check_origin: ["//*.gigalixirapp.com"]
