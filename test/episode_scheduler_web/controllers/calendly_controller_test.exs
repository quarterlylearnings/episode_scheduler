defmodule EpisodeSchedulerWeb.Controllers.CalendlyControllerTest do
  use EpisodeSchedulerWeb.ConnCase

  import Phoenix.ConnTest
  import EpisodeSchedulerWeb.Constants
  import EpisodeSchedulerWeb.CalendlyController

  @test_calendly_event get_test_calendly_event()
  @test_squadcast_response get_test_squadcast_response()

  test "POST /calendly responds with 200 given a valid payload", %{conn: conn} do
    conn = create(conn, @test_calendly_event)
    assert conn.status == 200
    refute json_response(conn, 200) == nil
  end

  test "accepts an incoming webhook event from Calendly and prepares a SquadCast session payload" do
    input = @test_calendly_event
    output = @test_squadcast_response
    # call method for creating squadcast request body from event payload
    result = create_squadcast_request_body(input)
    # assert the response contains the expected data
    assert result == output

  end

  # test "POST /calendly responds with 400 given an empty payload", %{conn: conn} do
  #   conn = post(conn, "/api/calendly", %{})
  #   assert conn.status == 400
  #   assert json_response(conn, 400)["message"] == "No payload"
  # end
end
