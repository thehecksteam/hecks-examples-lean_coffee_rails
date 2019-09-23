# User: e862a31e-27ff-4cbc-95e4-3bf4a3da8ae0
# Meeting: 425f332f-22c4-42c4-b1de-7981ed7bcc2f
class Meetings::ParticipantsController < ApplicationController
  def new
    @meeting = Domain[:Meetings].fetch(params[:meeting_id])
  end

  def create
    foo = params.permit(meetings_meeting: {})[:meetings_meeting].to_h
    @meeting = Domain[:Meetings].fetch(params[:id])
    
    @meeting.addParticipant()

    Domain[meeting].save
    redirect_to meetings_meeting_path(meeting.id)
  end

  def show
    foo = params.permit(:id)
    @domain_object = Domain[:Meetings].fetch(foo[:id])
  end
end
