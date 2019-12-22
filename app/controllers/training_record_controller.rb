class TrainingRecordController < ApplicationController
  def new
    @record = TrainingRecord.new
  end

  def create
    @record = TrainingRecord.new(training_record_params)
    if @record.save
      redirect_to("/records")
    end
  end

  def show
    @records = TrainingRecord.all
  end

  def edit
  end

  def destroy
  end

  private
    def training_record_params
        params.require(:training_record).permit(:menu,:weight,:repitition,:sets,:comment)
    end
end
