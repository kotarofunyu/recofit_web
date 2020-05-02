class Api::UserController < ApplicationController

  def index
    @user = User.all
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: { status: 'SUCCESS', data: post }
    else
      render json: { status: 'ERROR', data: post.errors }
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :introduction, :password_confirmation, :picture)
  end

end
