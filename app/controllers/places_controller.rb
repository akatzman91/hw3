class PlacesController < ApplicationController

def index
  @places = Place.all
end

def show
  @places = Place.find.by({"id" => params["id"]})
end

def new

end

end
