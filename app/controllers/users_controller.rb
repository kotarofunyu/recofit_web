class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            log_in @user
            flash[:success] = "ユーザー登録が完了しました。"
            redirect_to('/records')
        else
            render 'new'
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        @records = TrainingRecord.where(user_id: params[:id]).order(created_at: "DESC")
    end

    private
        def user_params
            params.require(:user).permit(:name,:email,:password,:password_confirmation)
        end
end
