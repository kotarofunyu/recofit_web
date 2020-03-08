class SessionsController < ApplicationController
  def new
    redirect_to '/records' if logged_in
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
      redirect_to('/records')
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

  # テストユーザーでログインする
  def test_login
    session[:user_id] = 1
    flash[:notice] = 'テストユーザーでログインしました。'
    redirect_to('/records')
  end
end
