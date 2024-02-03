defmodule EpisodeSchedulerWeb.SquadcastController do
  def http_client, do: Application.get_env(:episode_scheduler_web, :http_client)
  use EpisodeSchedulerWeb, :controller

  def create_session(session) do
    with {:ok, session} <- http_client().schedule_session(session) do
      {:ok, session}
    else
      {:error, error} -> {:error, error}
    end
  end
end
