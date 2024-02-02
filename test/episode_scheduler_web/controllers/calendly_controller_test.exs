defmodule EpisodeSchedulerWeb.Controllers.CalendlyControllerTest do
  use EpisodeSchedulerWeb.ConnCase

  import Phoenix.ConnTest
  import EpisodeSchedulerWeb.Constants

  @sample_payload get_test_calendly_event()


  test "POST /calendly responds with 200 given a valid payload", %{conn: conn} do
    conn = post(conn, "/api/calendly", @sample_payload)
    assert conn.status == 200
    refute json_response(conn, 200) == nil
  end

  # test "POST /calendly responds with 400 given an empty payload", %{conn: conn} do
  #   conn = post(conn, "/api/calendly", %{})
  #   assert conn.status == 400
  #   assert json_response(conn, 400)["message"] == "No payload"
  # end
end
