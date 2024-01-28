defmodule EpisodeSchedulerWeb.CalendlyController do
    use EpisodeSchedulerWeb, :controller

    def create(conn, params) do
        data = params
        json(conn, %{message: "Webhook processed"})
    end

end
