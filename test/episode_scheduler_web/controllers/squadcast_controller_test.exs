defmodule EpisodeSchedulerWeb.SquadcastControllerTest do
  use ExUnit.Case
  import Mox
  setup :verify_on_exit!

  alias EpisodeSchedulerWeb.SquadcastController

  @test_request EpisodeSchedulerWeb.Constants.get_test_squadcast_request
  @test_response EpisodeSchedulerWeb.Constants.get_test_squadcast_response

  describe "SquadCast controller" do
    test "schedules a SquadCast recording given a valid session payload" do
      # use the HTTP mock to stub the HTTP client
      HTTPClientBehaviourMock
      |> expect(:schedule_session, fn _body -> {:ok, @test_response} end)
      # create an assertion using HTTPMock
      # HTTPMock
      # |> expect(:post, fn _url, _body -> {:ok, @test_response} end)
      # call the controller action
      result = SquadcastController.create_session(@test_request)
      # assert the response contains the expected data
      assert result == {@test_response}

    end

  end
end
