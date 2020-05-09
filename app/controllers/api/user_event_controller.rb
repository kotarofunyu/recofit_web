class Api::UserEventController < ApplicationController
  def show
    user = User.find_by(api_token: params[:api_token])
    # events = Event.all
    events =
      Event.joins(:training_record).where(
        training_records: { user_id: user.id }
      ).select('events.name').distinct
    if events
      render json: events
    else
      render json: events.errors, status: :unprocessable_entity
    end
  end
end
