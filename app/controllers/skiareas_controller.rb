class SkiareasController < ApplicationController

    def index 
        render json: SkiArea.all
    end

    def show
        render json: SkiArea.find(params[:id])
    end

end

