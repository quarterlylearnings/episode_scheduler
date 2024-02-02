defmodule EpisodeSchedulerWeb.SquadcastControllerTest do
  use EpisodeSchedulerWeb.ConnCase

  alias EpisodeSchedulerWeb.MockHTTPClient
  alias EpisodeSchedulerWeb.SquadcastController

  @test_request EpisodeSchedulerWeb.Constants.get_test_squadcast_request
  @test_response EpisodeSchedulerWeb.Constants.get_test_squadcast_response

  describe "SquadCast controller" do
    setup do
      # Mock a POST request to the SquadCast API
      Mox.expect(MockHTTPClient, :post, fn _url, _headers, _body ->
        {:ok, %{status_code: 200, body: @test_response}}
      end)
      :ok
    end
    test "schedules a SquadCast recording given a valid session payload" do
      # call the controller action
      conn = post(build_conn(), "/api/squadcast", @test_request)
      # assert the response
      assert json_response(conn, 200) == @test_response

    end

  end
end
