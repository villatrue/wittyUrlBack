class Api::V1::BaselinksController < ApplicationController
    def index
        baselinks = Baselink.all
        render json: baselinks
    end
end
