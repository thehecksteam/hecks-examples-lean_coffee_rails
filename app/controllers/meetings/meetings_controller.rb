class Meetings::MeetingsController < ApplicationController
  def new
    @meeting = Domain[:Meetings].default(
      participants: [],
      timebox: Domain[Meetings: :Timebox].zeroed
    )
  end

  def create
    foo = params.permit(meetings_meeting: {})[:meetings_meeting].to_h
    meeting = Domain[:Meetings].default(
      participants: [],
      timebox: foo[:timebox].symbolize_keys
    )

    Domain[meeting].save
    redirect_to meetings_meeting_path(meeting.id)
  end

  def show
    foo = params.permit(:id)
    @domain_object = Domain[:Meetings].fetch(foo[:id])
  end
end
