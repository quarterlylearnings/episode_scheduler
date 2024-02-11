defmodule EpisodeSchedulerWeb.SquadcastController do

  # def http_client, do: Application.get_env(:episode_scheduler, :http_client)
  alias EpisodeScheduler.HTTPClient
  use EpisodeSchedulerWeb, :controller
  def create_session(session) do
    with {session} <- HTTPClient.schedule_session(session) do
      {session}
    else
      {:error, error} -> {:error, error}
    end
  end
end
