class Api::LoginController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    if @user&.authenticate(params[:password])
      render status: :ok, json: { api_token: @user.api_token }
    else
      render status: :unauthorized, json: {}
    end
  end
end
