defmodule EpisodeSchedulerWeb.CalendlyController do
  alias EpisodeSchedulerWeb.SquadcastController
    use EpisodeSchedulerWeb, :controller

    def create(conn, params) do
        # send 400 if  payload is empty
        if params == nil do
            conn
            |> put_status(400)
            |> json(%{message: "No payload"})
        end
        # log params to console
        IO.inspect(params)
        # if the event type is active then create a session in SquadCast
        if params["scheduled_event"]["status"] == "active" do
            # call the method to create a SquadCast session request body
            squadcast_request = create_squadcast_request_body(params)
            # send the request body to SquadCastController module
            response = SquadcastController.create_session(squadcast_request)
            # send the response from SquadCast controller to the caller
            conn
            |> put_status(200)
            |> json(response)
        else
            # send 200 with a explaining that the event is not active
            conn
            |> put_status(200)
            |> json(%{message: "Event not active"})
        end


        json(conn, %{message: "Webhook processed"})
    end

    def create_squadcast_request_body(calendly_event_payload) do
        # transform the payload into a SquadCast session request body
        # and return the request body
        # body
    end
end
