ExUnit.start()
# Start Mox so we can use it in our tests
Mox.defmock(HTTPClientBehaviourMock, for: EpisodeSchedulerWeb.Behaviours.HTTPClientBehaviour)
Mox.defmock(HTTPMock, for: HTTPoison.Base)
Application.put_env(:episode_scheduler, :http_client, HTTPClientBehaviourMock)
