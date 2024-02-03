defmodule EpisodeScheduler.HttpAdapter do
  use HTTPoison.Base

  defp access_token(), do: Application.get_env(:episode_scheduler, :squadcast_api_key)
  def base_url(), do: Application.get_env(:episode_scheduler, :squadcast_base_url)

  def process_url(url) do
    base_url() <> url
  end

  def post(url, body) do
    post(url, Jason.encode!(body), headers())
  end

  defp headers do
    [
      {"Authorization", "Bearer #{access_token()}"},
      {"Content-Type", "application/json"},
      {"Accept", "application/json"}
    ]
  end

  def process_response_body(""), do: {""}
  def process_response_body(body) do
    body
    |> Jason.decode!
  end
end