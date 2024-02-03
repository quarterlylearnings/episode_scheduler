defmodule EpisodeSchedulerWeb.Behaviours.HTTPClientBehaviour do
  @callback schedule_session(map) :: {:ok, map} | {:error, map}
end
