class LocationsController < ApplicationController
    # component wil iterate over savedLocations array and display a 
    # location show component, each show will fetch with location props 

    # save location lat/long and associate to session_id/user_id

    def create 
        location = Location.create(location_params)
        if location
    end


    private 

    def location_params
        params.permit(:lat, :long)
    end

end
