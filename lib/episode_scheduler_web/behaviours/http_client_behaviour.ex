defmodule EpisodeSchedulerWeb.Behaviours.HTTPClientBehaviour do
  @callback schedule_session(map()) :: {:ok, any()} | {:error, any()}
  # @callback post(String.t(), map()) :: {:ok, any()} | {:error, any()}
end
