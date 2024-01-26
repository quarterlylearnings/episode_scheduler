defmodule EpisodeSchedulerWeb.CalendlyController do
    use EpisodeSchedulerWeb, :controller

    def create(conn, _params) do 
        send_resp(conn, 200, "Heard loud and clear.")
    end
end