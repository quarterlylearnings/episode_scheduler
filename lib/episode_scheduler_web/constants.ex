defmodule EpisodeSchedulerWeb.Constants do
  @sample_payload %{
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

  def get_sample_payload do
    @sample_payload
  end
end
