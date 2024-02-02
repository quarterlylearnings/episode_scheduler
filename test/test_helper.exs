ExUnit.start()
# Start Mox so we can use it in our tests
Mox.defmock(EpisodeSchedulerWeb.MockHTTPClient, for: EpisodeSchedulerWeb.HTTPClientBehaviour)
# Start the application
Application.put_env(:episode_scheduler_web, :http_client, EpisodeSchedulerWeb.MockHTTPClient)
