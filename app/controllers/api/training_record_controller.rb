class Api::TrainingRecordController < ApplicationController
    def index
        @training_record = TrainingRecord.all
    end

    def user_event
        @event = SetDatum.joins(event: :training_record).where(training_records: { user_id: params[:user_id] }, events: { name: params[:event_name] })
    end
end
