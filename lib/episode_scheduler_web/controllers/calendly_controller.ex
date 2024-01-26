defmodule EpisodeSchedulerWeb.CalendlyController do
    use EpisodeSchedulerWeb, :controller

    def create(conn, params) do
        data = params
        send_resp(conn, 200, %{ "message" => "Connected", data: data })
    end
end
