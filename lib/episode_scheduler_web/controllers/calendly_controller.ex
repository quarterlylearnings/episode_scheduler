defmodule EpisodeSchedulerWeb.CalendlyController do
  alias EpisodeSchedulerWeb.SquadcastController
  use EpisodeSchedulerWeb, :controller

  defp show_id(), do: Application.get_env(:episode_scheduler, :calendly_bootcamp_session_type_id)

  def create(conn, params) do
    # send 400 if  payload is empty
    if params == nil do
      conn
      |> put_status(400)
      |> json(%{message: "No payload"})
    end
    # if the event type is active then create a session in SquadCast
    if params["payload"]["scheduled_event"]["status"] == "active" do
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
    %{
      "sessionTitle" => "Bootcamp Session with #{calendly_event_payload["payload"]["name"]}",
      "date" => extract_date(calendly_event_payload["payload"]["scheduled_event"]["start_time"]),
      "timeZone" => calendly_event_payload["payload"]["timezone"],
      "startTime" =>
        convert_24hr_format_to_12hr_format(
          format_time(calendly_event_payload["payload"]["scheduled_event"]["start_time"])
        ),
      "endTime" =>
        convert_24hr_format_to_12hr_format(
          format_time(calendly_event_payload["payload"]["scheduled_event"]["end_time"])
        ),
      "stage" =>
        extract_guest_email(calendly_event_payload["payload"]["scheduled_event"]["event_guests"]),
      "viewer" => calendly_event_payload["payload"]["email"],
      "videoEnabled" => "true",
      # Static value as per your output example
      "favorite" => "false",
      "showID" => show_id()
    }

    # and return the request body
    # body
  end

  defp extract_date(date_time) do
    # extract the date from the datetime string
    String.split(date_time, "T") |> List.first()
  end

  defp format_time(date_time) do
    # extract the time from the datetime string
    String.split(date_time, "T") |> List.last()
  end

  defp extract_guest_email(event_guests) do
    # extract the email from the event guests
    event_guests |> List.first() |> Map.get("email")
  end

  defp convert_24hr_format_to_12hr_format(time) do
    parts = String.split(time, ":")
    hour = String.to_integer(Enum.at(parts, 0))
    minutes = Enum.at(parts, 1)

    formatted_time =
      case hour do
        0 -> "12:#{minutes} AM"
        hour when hour in 1..11 -> "#{hour}:#{minutes} AM"
        12 -> "#{hour}:#{minutes} PM"
        hour when hour in 13..23 -> "#{hour - 12}:#{minutes} PM"
      end

    formatted_time
  end
end
