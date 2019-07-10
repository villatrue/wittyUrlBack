class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        render json: users
        # (:include => {
        #   :userlink => {:only => [:id, :ending]},
        #   :baselink => {:only => [:id, :url, :img]}
        # }, :except => [:updated_at, :created_at])
    end
     
    def show
        user = User.find_by(id: params[:id])
        render json: user
        #  user.to_json(:include => {
        #     :userlink => {:only => [:id, :ending]},
        #     :baselink => {:only => [:id, :url, :img]}
        # }, :except => [:updated_at, :created_at])
    end

    def new
        user = User.new
    end

    def create
        @user = User.new(user_params)
        @user.save
        # # session[:user_id] = @user.id
        # redirect_to user_path(@user.id)
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
