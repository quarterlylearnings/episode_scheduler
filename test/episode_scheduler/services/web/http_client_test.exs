defmodule EpisodeScheduler.Services.Web.HTTPClientTest do
  alias EpisodeScheduler.HTTPClient
  use ExUnit.Case
  import Mox
  setup :verify_on_exit!

  @test_squadcast_request EpisodeSchedulerWeb.Constants.get_test_squadcast_request
  @test_squadcast_response EpisodeSchedulerWeb.Constants.get_test_squadcast_response

  test "schedules a SquadCast recording given a valid session payload" do
    # use the HTTP mock to stub the HTTP client
    HTTPMock
    |> expect(:post, fn _url, _body -> {:ok, @test_squadcast_response} end)
    # call the controller action
    result = HTTPClient.schedule_session(@test_squadcast_request)
    # assert the response contains the expected data
    assert result == @test_squadcast_response
  end


end
