class Api::TrainingRecordController < ApplicationController
  # before_action :authenticate_by_token

  def index
    @training_record = TrainingRecord.all
  end

  def create
    training_record = TrainingRecord.new(training_record_params)

    if training_record.save
      render json: { status: 'SUCCESS', data: training_record }
    else
      render json: { status: 'ERROR', data: training_record.errors }
    end
  end

  def show
    @training_record = TrainingRecord.find_by(id: params[:id])
  end

  def user_event
    @event =
      SetDatum.joins(event: :training_record).where(
        training_records: { user_id: params[:user_id] },
        events: { name: params[:event_name] }
      )
  end

  def authenticate_by_token
    @user = User.find_by(api_token: params[:api_token])
    render status: :unauthorized, json: 'Invalid API token' if @user.blank?
  end

  private

  def training_record_params
    params.require(:training_record).permit(
      :comment,
      :picture,
      event_attributes: [
        :part,
        :name,
        :destroy,
        set_datum_attributes: %i[weight rep set main renewal _destroy]
      ]
    ).merge(user_id: current_user.id)
  end

  def update_training_record_params
    # 小テーブルの種目テーブルも同時にパラメータ取得
    params.require(:training_record).permit(
      :comment,
      :picture,
      event_attributes: [
        :id,
        :part,
        :name,
        :_destroy,
        set_datum_attributes: %i[id weight rep set main renewal _destroy]
      ]
    ).merge(user_id: current_user.id)
  end
end
