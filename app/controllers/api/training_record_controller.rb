class Api::TrainingRecordController < ApplicationController
  # before_action :authenticate_by_token
  skip_forgery_protection

  def index
    @training_record = TrainingRecord.all.order(created_at: 'DESC')
  end

  def create
    @user = User.find_by(api_token: params[:api_token])
    render status: :unauthorized, json: 'Invalid API Token' if @user.blank?
    training_record = TrainingRecord.create(training_record_params.merge(user_id: @user.id))
    if training_record
      render json: { comment: training_record.comment }, status: :created
    else
      render json: { status: 'ERROR', data: training_record.errors }
    end
  end

  def show
    @training_record = TrainingRecord.find_by(id: params[:id])
  end

  def user_event
    @event = SetDatum.joins(event: :training_record).where(training_records: { user_id: params[:user_id] }, events: { name: params[:event_name] })
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
    )
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
    ).merge(user_id: user.id)
  end
end
