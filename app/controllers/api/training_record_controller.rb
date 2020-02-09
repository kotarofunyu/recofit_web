class Api::TrainingRecordController < ApplicationController
    def index
        @training_record = TrainingRecord.all
    end
end