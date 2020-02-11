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

    def edit
        @user = User.find_by(id: params[:id])
    end

    def update
        @user = User.find_by(id: params[:id])
        if @user.update_attributes(update_user_params)
            flash[:success] = "ユーザー情報を編集しました。"
            redirect_to("/users/#{@user.id}")
        else
            render 'edit'
        end
    end

    def event
        @name_params = params[:name]
        @user_id = params[:id]
        @records = TrainingRecord.where(user_id: @user_id)
    end

    def show
        @user = User.find_by(id: params[:id])
        @records = TrainingRecord.where(user_id: params[:id]).order(created_at: "DESC")

    end

    private
        def user_params
            params.require(:user).permit(:name,:email,:password, :introduction, :password_confirmation,:picture)
        end

        def update_user_params
            params.require(:user).permit(:id,:name,:email,:passowrd,:introduction,:password_confirmation,:picture)
        end
end

