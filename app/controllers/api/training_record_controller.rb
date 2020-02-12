class Api::TrainingRecordController < ApplicationController
    def index
        @training_record = TrainingRecord.all
    end

    def weight
        @events = Event.where(name: "ベンチプレス")
        @set = SetDatum.all

    end

    def usersweight
        @event = SetDatum.joins({:event => :training_record}).where(:training_records => {:user_id => params[:id]},:events => {:name => "ベンチプレス"})
    end

end