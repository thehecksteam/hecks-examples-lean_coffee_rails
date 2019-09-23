# User: e862a31e-27ff-4cbc-95e4-3bf4a3da8ae0
# Meeting: 425f332f-22c4-42c4-b1de-7981ed7bcc2f
class Meetings::ParticipantsController < ApplicationController
  def new
    @meeting = Domain[:Meetings].fetch(params[:meeting_id])
    @participant = Domain[Meetings: :Participant].new(
      remaining_votes: 5,
      user: nil
    )
  end

  def create
    foo = params.permit(meetings_participant: {})[:meetings_participant].to_h
    @meeting = Domain[:Meetings].fetch(foo[:meeting_id])
    Domain[@meeting].add_participant_to_meeting!(foo.symbolize_keys)

    Domain[@meeting].save
    redirect_to meetings_meeting_path(@meeting.id)
  end

  def show
    foo = params.permit(:id)
    @domain_object = Domain[:Meetings].fetch(foo[:id])
  end
end
