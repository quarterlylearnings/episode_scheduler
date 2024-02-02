defmodule EpisodeSchedulerWeb.Constants do
  @test_calendly_event %{
    "created_at" => "2020-11-23T17:51:19.000000Z",
    "created_by" => "https://api.calendly.com/users/AAAAAAAAAAAAAAAA",
    "event" => "invitee.created",
    "payload" => %{
      "cancel_url" => "https://calendly.com/cancellations/AAAAAAAAAAAAAAAA",
      "created_at" => "2020-11-23T17:51:18.327602Z",
      "email" => "test@example.com",
      "event" => "https://api.calendly.com/scheduled_events/AAAAAAAAAAAAAAAA",
      "name" => "John Doe",
      "new_invitee" => nil,
      "old_invitee" => nil,
      "questions_and_answers" => [],
      "reschedule_url" => "https://calendly.com/reschedulings/AAAAAAAAAAAAAAAA",
      "rescheduled" => false,
      "status" => "active",
      "text_reminder_number" => nil,
      "timezone" => "America/New_York",
      "tracking" => %{
        "utm_campaign" => nil,
        "utm_source" => nil,
        "utm_medium" => nil,
        "utm_content" => nil,
        "utm_term" => nil,
        "salesforce_uuid" => nil
      },
      "updated_at" => "2020-11-23T17:51:18.341657Z",
      "uri" =>
        "https://api.calendly.com/scheduled_events/AAAAAAAAAAAAAAAA/invitees/AAAAAAAAAAAAAAAA",
      "scheduled_event" => %{
        "uri" => "https://api.calendly.com/scheduled_events/GBGBDCAADAEDCRZ2",
        "name" => "15 Minute Meeting",
        "status" => "active",
        "start_time" => "2019-08-24T14:15:22.123456Z",
        "end_time" => "2019-08-24T14:15:22.123456Z",
        "event_type" => "https://api.calendly.com/event_types/GBGBDCAADAEDCRZ2",
        "location" => %{
          "type" => "physical",
          "location" => "string"
        },
        "invitees_counter" => %{
          "total" => 0,
          "active" => 0,
          "limit" => 0
        },
        "created_at" => "2019-01-02T03:04:05.678123Z",
        "updated_at" => "2019-01-02T03:04:05.678123Z",
        "event_memberships" => [
          %{
            "user" => "https://api.calendly.com/users/GBGBDCAADAEDCRZ2",
            "user_email" => "user@example.com",
            "user_name" => "John Smith"
          }
        ],
        "event_guests" => [
          %{
            "email" => "user@example.com",
            "created_at" => "2019-08-24T14:15:22.123456Z",
            "updated_at" => "2019-08-24T14:15:22.123456Z"
          }
        ]
      }
    }
  }

  @test_squadcast_request %{
    "sessionTitle" => "Your Session Title",
    "date" => "2023-03-19",
    "timeZone" => "America/Los_Angeles",
    "startTime" => "05:00 PM",
    "endTime" => "07:00 PM",
    "stage" => "john@email.com",
    "viewer" => "jane@email.com",
    "videoEnabled" => "true",
    "favorite" => "true",
    "showID" => "Show ID"
  }

  @test_squadcast_response %{
    "sessionID" => "Session ID",
    "sessionTitle" => "Session Title",
    "showID" => "Show ID",
    "showTitle" => "Show Name",
    "showImg" => "Show Image URL",
    "orgID" => "Org ID",
    "date" => "Date Time",
    "startTime" => "5:00 PM",
    "endTime" => "7:00 PM",
    "videoEnabled" => "true",
    "favorite" => "true",
    "take" => 0,
    "inviteLinks" => %{
      "stage" => [
        [
          %{
            "shortLink" => "https://squadcastdev.page.link/eb6Y",
            "previewLink" => "https://squadcastdev.page.link/eb6Y?d=1"
          }
        ]
      ],
      "backstage" => [
        [
          %{
            "shortLink" => "https://squadcastdev.page.link/6o2V",
            "previewLink" => "https://squadcastdev.page.link/6o2V?d=1"
          }
        ]
      ]
    }
  }
  def get_test_calendly_event do
    @test_calendly_event
  end

  def get_test_squadcast_request do
    @test_squadcast_request
  end

  def get_test_squadcast_response do
    @test_squadcast_response
  end

end
