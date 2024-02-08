import Config

# Do not print debug messages in production
config :logger, level: :info

# Runtime production configuration, including reading
# of environment variables, is done on config/runtime.exs.
config :episode_scheduler, EpisodeSchedulerWeb.Endpoint,
  http: [port: System.get_env("PORT")],
  url: [host: System.get_env("APP_NAME") <> ".gigalixirapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto], host: nil],
  secret_key_base: Map.fetch!(System.get_env(), "SECRET_KEY_BASE"),
  server: true
