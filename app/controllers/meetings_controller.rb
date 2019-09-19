class LeanCoffee::Domain::Meetings::Meeting
  def self.model_name
    ActiveModel::Name.new(self, nil, 'Meeting')
  end
end

class MeetingsController < ApplicationController
  def new
    LeanCoffee::Domain::Meetings::Meeting.include ActiveModel::Model

    @meeting = Domain[:Meetings].default(
      participants: [],
      timebox: Domain[Meetings: :Timebox].zeroed
    )
  end

  def create
    foo = params.permit(meeting: {})[:meeting].to_h
    meeting = Domain[:Meetings].default(
      participants: [],
      timebox: foo[:timebox].symbolize_keys
    )

    Domain[meeting].save
    redirect_to meeting_path(meeting.id)
  end

  def show
    foo = params.permit(:id)
    @meeting = Domain[:Meetings].fetch(foo[:id])
  end
end
