class Api::V1::UserlinksController < ApplicationController
    def new
        userlink = Userlink.new
        render json: userlink
    end

    def create
        userlink = Userlink.createrail(userlink_params)
        render json: userlink
    end

    private

    def userlink_params
        params.require(:userlink).permit(:user_id, :baselink_id, :url)
    end
end
