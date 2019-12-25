class TrainingRecordController < ApplicationController

  # 作成と表示を同画面で行う
  def index
    # 新規作成
    @record = TrainingRecord.new
    @record.build_event

    # 全ての投稿を取得して、作成日昇順でソートする
    # @records = TrainingRecord.all.order(created_at: "DESC")
    @records = TrainingRecord.includes(:event).order(created_at: "DESC")

  end

  # フォームからの記録をDBに登録する処理
  def create
    @record = TrainingRecord.new(training_record_params)

    if @record.save
      redirect_to("/records")
    end
  end

  def edit
  end

  def destroy
    # 削除対象の記録を取得
    @record = TrainingRecord.find_by(id: params[:id])
    # 削除対象の記録を削除する
    @record.destroy
    # 記録一覧へリダイレクトする
    redirect_to("/records")
  end

  # ストロングパラメーターを定義
  private
    def training_record_params
      # 小テーブルの種目テーブルも同時にパラメータ取得
        params.require(:training_record).permit(:comment, :picture, event_attributes:[:id, :name, :weight, :rep, :set, :new])
    end
end
