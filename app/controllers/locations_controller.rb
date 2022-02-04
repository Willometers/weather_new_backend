class LocationsController < ApplicationController
    # a component will  iterate over savedLocations array and display a 
    # a location show component, each show will fetch with location props 
    # save location lat/long and associate to session_id/user_id
    # user_id = session[:user_id]

    # "/save"
    def create
        if session[:user_id]
            # user_id = session[:user_id]
            # byebug
            location = Location.create(location_params)
            render json: location, status: :created
        else
            render json: { error: "Must Log In" }, status: :unauthorized
        end
    end

    def index
        locations = Location.all
        render json: locations
    end

    private 

    def location_params
        params.permit(:user_id, :location, :lat, :lon)
    end

end