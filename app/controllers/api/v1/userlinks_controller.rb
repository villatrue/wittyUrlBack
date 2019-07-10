class Api::V1::UserlinksController < ApplicationController
    def new
        userlink = Userlink.new
    end

    def create
        userlink = userlink.new(userlink_params)
    end

    private

    def userlink_params
        params.require(:userlink).permit(:user_id, :userlink_id, :url)
    end
end
