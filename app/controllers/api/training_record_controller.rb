class Api::TrainingRecordController < ApplicationController
    def index
        @training_record = TrainingRecord.all
    end

    def weight
        @events = Event.where(name: "ベンチプレス")
        @set = SetDatum.all

    end
end