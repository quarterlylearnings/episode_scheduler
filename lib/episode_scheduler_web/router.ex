defmodule EpisodeSchedulerWeb.Router do
  use EpisodeSchedulerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EpisodeSchedulerWeb do
    pipe_through :api

    post( "/calendly", CalendlyController, :create)
  end
end
