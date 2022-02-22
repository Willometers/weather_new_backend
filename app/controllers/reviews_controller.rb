class ReviewsController < ApplicationController

    def create
        # byebug
        review = Review.create(review_params)
        render json: review
    end

    def index 
        render json: Review.all
    end

    def show
        render json: Review.find(params[:id])
    end

    private 

    def review_params
        params.permit(:user_id, :ski_area_id, :comments, :rating)
    end

end
