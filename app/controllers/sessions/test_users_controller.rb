class Sessions::TestUsersController < ApplicationController
  def create
    session[:user_id] = 2
    flash[:notice] = 'テストユーザーでログインしました'
    redirect_to training_records_path
  end
end
