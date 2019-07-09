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
end
