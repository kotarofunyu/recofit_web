class SessionsController < ApplicationController
  def new
    redirect_to training_records_path if logged_in
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    # 認証に成功した場合
    if user&.authenticate(params[:session][:password])
      # ログインする
      log_in user
      # フラッシュメッセージ
      flash[:notice] = "#{user.name}でログインしました。"
      # 特定のページにリダイレクトする
      redirect_to training_records_path
    else
      # エラーメッセージの表示
      flash.now[:danger] = 'メールアドレスもしくはパスワードが正しくありません。'
      render 'new'
    end
  end

  # ログアウト
  def destroy
    log_out
    redirect_to('/')
  end
end
