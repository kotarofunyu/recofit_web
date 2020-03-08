class TrainingRecordController < ApplicationController
  # 作成と表示を同画面で行う
  def index
    # 新規作成
    @record = TrainingRecord.new
    recordevent = @record.event.build
    recordevent.set_datum.build

    # 全ての投稿を取得して、作成日昇順でソートする
    @records = TrainingRecord.all.includes(:event).order(created_at: 'DESC')

    @menuname = MenuName.new
  end

  # 記録詳細ページ”
  def show
    # パタメーターから投稿を取得して変数に代入
    @record = TrainingRecord.find_by(id: params[:id])
  end

  # フォームからの記録をDBに登録する処理
  def create
    @record = TrainingRecord.new(create_training_record_params)
    if @record.save
      flash[:success] = '投稿しました！'
      redirect_to('/records')
    else
      render 'index'
    end
  end

  # 種目名の登録
  def register
    @menuname = MenuName.new(menu_name_params)
    if @menuname.save
      redirect_to('/records')
    else
      render('index')
    end
  end

  def edit
    @record = TrainingRecord.find_by(id: params[:id])
  end

  def update
    @record = TrainingRecord.find_by(id: params[:id])
    if @record.update_attributes(update_training_record_params)
      flash[:success] = '記録を編集しました'
      redirect_to('/records')
    else
      flash[:danger] = '編集できませんでした。エラーを確認してください。'
      render 'edit'
    end
    # render plain: params.inspect
  end

  # 記録削除
  def destroy
    # 削除対象の記録を取得
    @record = TrainingRecord.find_by(id: params[:id])

    # 削除対象の記録を削除する
    flash[:success] = '記録を削除しました' if @record.destroy

    # 記録一覧へリダイレクトする
    redirect_to('/records')
  end

  # 種目別の種目一覧ページ
  def eventindex
    @user_params = params[:user_id]
    @user = User.find_by(id: @user_params)
    @records = Event.joins(:training_record).where(training_records: { user_id: @user_params }).select('events.name').distinct
  end

  # 種目別の一覧ページ
  def event
    @events = Event.where(name: params[:name]).order(created_at: 'DESC')
  end

  # ストロングパラメーター
  private

  def create_training_record_params
    # 小テーブルの種目テーブルも同時にパラメータ取得
    params.require(:training_record).permit(:comment, :picture, event_attributes: [:part, :name, :_destroy, set_datum_attributes: %i[weight rep set _destroy]]).merge(user_id: current_user.id)
  end

  def update_training_record_params
      # 小テーブルの種目テーブルも同時にパラメータ取得
      params.require(:training_record).permit(:comment, :picture, event_attributes: [:id, :part, :name, :_destroy, set_datum_attributes: %i[id weight rep set _destroy]]).merge(user_id: current_user.id)
  end

  def menu_name_params
    params.require(:menu_name).permit(:name)
  end
end
