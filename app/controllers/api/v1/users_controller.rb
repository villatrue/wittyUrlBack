class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        render json: users
        # (:include => {
        #   :userLink => {:only => [:id, :ending]},
        #   :baseLink => {:only => [:id, :url, :img]}
        # }, :except => [:updated_at, :created_at])
    end
     
    def show
        user = User.find_by(id: params[:id])
        render json: user.to_json(:include => {
            :userLink => {:only => [:id, :ending]},
            :baseLink => {:only => [:id, :url, :img]}
        }, :except => [:updated_at, :created_at])
    end
end
