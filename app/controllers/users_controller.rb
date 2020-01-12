class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        newUser = User.new(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
        if newUser.save
            redirect_to('/records')
        end
    end
    private
        def user_params
            params.require(:user).permit(:name,:email,:password,:password_confirmation)
        end
end
