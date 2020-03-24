class EventController < ApplicationController
    # 種目別の一覧ページ
    def index
        @event_name = params[:name]
        @records = TrainingRecord.includes(:event).where(events: { name: @event_name }).order(created_at: 'DESC')
        @events = Event.where(name: @event_name)
    end
end
