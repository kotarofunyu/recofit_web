class TrainingRecordsController < ApplicationController
  # 作成と表示を同画面で行う
  def index
    @record = TrainingRecord.new
    record_event = @record.event.build
    record_event.set_datum.build

    @records = TrainingRecord.all.includes(:event).order(created_at: 'DESC')
  end

  def new
    @training_record = TrainingRecord.new
  end

  # 記録詳細ページ”
  def show
    @record = TrainingRecord.find_by(id: params[:id])
    @user = User.find_by(id: @record.user_id)
  end

  # 新規作成
  def create
    @record = TrainingRecord.new(create_training_record_params)
    if @record.save
      flash[:success] = '投稿しました！'
      redirect_to training_records_path
    else
      render 'index'
    end
  end

  # 編集
  def edit
    @record = TrainingRecord.find_by(id: params[:id])

    return unless !logged_in || current_user.id != @record.user_id

    flash[:danger] = '他のユーザーの記録を編集することはできません。'
    redirect_to training_records_path
  end

  # 編集を更新
  def update
    @record = TrainingRecord.find_by(id: params[:id])
    if @record.update(update_training_record_params)
    # if @record.update_attributes(update_training_record_params)
      flash[:success] = '記録を編集しました'
      redirect_to training_records_path
    else
      flash[:danger] = '編集できませんでした。エラーを確認してください。'
      render 'edit'
    end
  end

  # 記録削除
  def destroy
    @record = TrainingRecord.find_by(id: params[:id])

    if logged_in && current_user.id == @record.user_id
      @record.destroy
      flash[:success] = '記録を削除しました。'
    else
      flash[:danger] = '他ユーザーの記録削除は禁止です。'
    end
    redirect_to training_records_path
  end

  private

  def create_training_record_params
    # 小テーブルの種目テーブルも同時にパラメータ取得
    params.require(:training_record).permit(
      :comment,
      :picture,
      event_attributes: [
        :part,
        :name,
        :_destroy,
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

  def menu_name_params
    params.require(:menu_name).permit(:name)
  end
end
