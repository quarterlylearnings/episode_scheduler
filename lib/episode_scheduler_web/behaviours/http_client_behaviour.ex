defmodule EpisodeSchedulerWeb.Behaviours.HTTPClientBehaviour do
  @callback post(String.t, map, map) :: {:ok, map} | {:error, map}
  @callback get(String.t, map) :: {:ok, map} | {:error, map}
end
