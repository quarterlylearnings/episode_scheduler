defmodule EpisodeScheduler.HTTPClientTest do
  alias EpisodeScheduler.HTTPClient
  import Mox
  setup :verify_on_exit!

  @test_squadcast_request EpisodeSchedulerWeb.Constants.get_test_squadcast_request
  @test_squadcast_response EpisodeSchedulerWeb.Constants.get_test_squadcast_response

  describe "HTTPClient (that should be named SquadCast client or service)" do
    test "schedules a session in SquadCast" do
      # stub the HTTP adapter
      HTTPMock
      |> expect(:post, fn _url, _body -> {:ok, @test_squadcast_request} end)
      # declare a possible response
      result = @test_squadcast_response
      # call the HTTPClient and assert method called responds with the expected data
      assert result == HTTPClient.send_post_request(@test_squadcast_request)
    end
  end
end
