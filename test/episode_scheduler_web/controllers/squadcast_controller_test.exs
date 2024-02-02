defmodule EpisodeSchedulerWeb.SquadcastControllerTest do
  use EpisodeSchedulerWeb.ConnCase

  alias EpisodeSchedulerWeb.MockHTTPClient
  alias EpisodeSchedulerWeb.SquadcastController

  @test_request EpisodeSchedulerWeb.Constants.get_test_squadcast_request
  @test_response EpisodeSchedulerWeb.Constants.get_test_squadcast_response

  describe "SquadCast controller" do
    test "schedules a SquadCast recording given a valid session payload" do
      valid_payload = @test_request
      # Mock a POST request to the SquadCast API
      Mox.expect(MockHTTPClient, :post, fn _url, _headers, _body ->
        {:ok, %{status_code: 200, body: @test_response}}
      end)
      # call the controller action
      EpisodeSchedulerWeb.SquadcastController.create(build_conn(), valid_payload)


    end

  end
end
