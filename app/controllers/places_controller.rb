class PlacesController < ApplicationController

  def index
    @places = Place.all
    respond_to :html
  end

end
