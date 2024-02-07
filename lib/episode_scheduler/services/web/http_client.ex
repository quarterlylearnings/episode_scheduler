defmodule EpisodeScheduler.HTTPClient do
  def http_adapter, do: Application.get_env(:episode_scheduler, :http_adapter)

  # Create a session in SquadCast

  def schedule_session(session) do
    "/sessions"
    |> send_post_request(session)
  end

  def send_post_request(url, body) do
    http_adapter().post(url, body)
    |> handle_response
  end

  defp handle_response(response) do
    case response do
      {:ok, response} -> {response}
      {:ok, %{body: response, status_code: 404}} -> {:error, response}
      {:ok, nil} -> {:ok, nil}
      {:error, error} -> {:error, error}
    end
  end

end
