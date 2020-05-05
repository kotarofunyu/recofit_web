class Api::UserController < ApplicationController
  # skip_before_action :verify_authenticity_token
  skip_forgery_protection

  def index
    @user = User.all
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: { status: 'SUCCESS', data: user }
    else
      render json: { status: 'ERROR', data: user.errors }
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :introduction,
      :password_confirmation,
      :picture
    )
  end
end
