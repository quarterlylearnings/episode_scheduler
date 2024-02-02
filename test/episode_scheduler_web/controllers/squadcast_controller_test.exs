defmodule EpisodeSchedulerWeb.SquadcastControllerTest do
  use EpisodeSchedulerWeb.ConnCase

  alias EpisodeSchedulerWeb.SquadcastController

  @test_request EpisodeSchedulerWeb.Constants.get_test_squadcast_request

  describe "POST /api/squadcast" do
    test "schedules a SquadCast recording given a valid payload" do
      valid_payload = @test_request


    end

  end
end
