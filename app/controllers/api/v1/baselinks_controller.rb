class Api::V1::BaselinksController < ApplicationController
    def index
        baselinks = Baselink.all
        render json: baselinks
    end

    def show
        baselink = Baselink.find_by(id: params[:id])
        render json: baselink
    end

end
