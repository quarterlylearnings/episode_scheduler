import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :episode_scheduler, EpisodeSchedulerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "+pQxlMeAmd5nWJq87E3a9ySE6e+pUfrOgC0wNJmYvvS89gKRp+CroqS5IxXV1wT1",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
# Use the mock HTTP client for testing
config :episode_scheduler, :http_client, EpisodeSchedulerWeb.MockHTTPClient
