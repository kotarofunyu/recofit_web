class SessionsController < ApplicationController
  def new
    if logged_in
      redirect_to "/records"
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    # 認証に成功した場合
    if user && user.authenticate(params[:session][:password])
      #ログインする
      log_in user
      # 特定のページにリダイレクトする
      redirect_to('/records')
    else
      #エラーメッセージの表示
      flash.now[:danger] = 'メールアドレスもしくはパスワードが正しくありません。'
      render 'new'
    end
  end

  # ログアウト
  def destroy
    log_out
    redirect_to('/records')
  end

  # テストユーザーでログインする
  def test_login
    session[:user_id] = 2
    redirect_to('/records')
  end
end
