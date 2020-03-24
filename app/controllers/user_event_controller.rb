class UserEventController < ApplicationController
    # 種目
    def show
        @name_params = params[:event_name]
        @user_id = params[:user_id]
        @user = User.find_by(id: @user_id)
        @records = TrainingRecord.joins(:event).where(user_id: @user_id, events: { name: @name_params }).order(created_at: 'DESC')
    end

    # 種目別の種目一覧ページ
    def index
        @user_params = params[:user_id]
        @user = User.find_by(id: @user_params)
        @records = Event.joins(:training_record).where(training_records: { user_id: @user_params }).select('events.name').distinct
    end
end
