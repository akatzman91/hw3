class PlacesController < ApplicationController

def index
  @places = Place.all
end

def show
  @places = Place.find.by({"id" => params["id"]})
end

def new

end

def create
  @place = Place.new
  @place["name"] = params["name"]
  @place.save
  redirect_to "/places"
end


end
