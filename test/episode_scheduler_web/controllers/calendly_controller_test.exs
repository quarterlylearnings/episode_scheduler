defmodule EpisodeSchedulerWeb.Controllers.CalendlyControllerTest do
  use EpisodeSchedulerWeb.ConnCase

  import Poison
  import Phoenix.ConnTest

  @sample_payload %{
    "created_at" => "2020-11-23T17:51:19.000000Z",
    "created_by" => "https://api.calendly.com/users/AAAAAAAAAAAAAAAA",
    "event" => "invitee.created",
    "payload" => %{
      "email" => "test@example.com",
      "name" => "John Doe",
      "scheduled_event" => %{
        "start_time" => "2019-08-24T14:15:22.123456Z",
        "end_time" => "2019-08-24T14:30:22.123456Z"
      }
    }
  }

  test "POST /calendly correctly parses a payload" do
    conn =
      post(build_conn(), "/api/calendly", Poison.encode!(@sample_payload), [
        {"Content-Type", "application/json"}
      ])

    assert json_response(conn, 200) == %{
             "message" => "Webhook processed",
             "data" => %{
               "email" => "test@example.com",
               "event_name" => "John Doe",
               "event_type" => "invitee.created",
               "start_time" => "2019-08-24T14:15:22.123456Z",
               "end_time" => "2019-08-24T14:30:22.123456Z"
             }
           }
  end
end
