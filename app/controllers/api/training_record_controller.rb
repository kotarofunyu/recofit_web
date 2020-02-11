class Api::TrainingRecordController < ApplicationController
    def index
        @training_record = TrainingRecord.all
    end

    def weight
        @events = Event.where(name: "ベンチプレス")
        @set = SetDatum.all

    end

    def usersweight
        param = params[:name]
        eventname = URI.decode(param)
        @event = Event.where(name: eventname)
    end
end