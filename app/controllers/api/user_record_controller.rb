class Api::UserRecordController < ApplicationController

  def show
    user = User.find_by(api_token: params[:api_token])
    @records = TrainingRecord.where(user_id: user.id)
  end
end
