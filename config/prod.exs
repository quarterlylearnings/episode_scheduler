import Config

# Do not print debug messages in production
config :logger, level: :info

# Runtime production configuration, including reading
# of environment variables, is done on config/runtime.exs.
config :episode_scheduler, EpisodeSchedulerWeb.Endpoint,
  http: [:inet6, port: System.get_env("PORT") || 4000],
  url: [scheme: "https", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto], host: nil],
  check_origin: ["//*.gigalixirapp.com"]
