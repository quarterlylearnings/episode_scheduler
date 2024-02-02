defmodule EpisodeSchedulerWeb.CalendlyController do
    use EpisodeSchedulerWeb, :controller

    def create(conn, params) do
        # send 400 if  payload is empty
        if params == nil do
            conn
            |> put_status(400)
            |> json(%{message: "No payload"})
        end
        json(conn, %{message: "Webhook processed"})
    end
end
