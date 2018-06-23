class Cities::PlacesController < ApplicationController

  def show
    @city = City.friendly.find(params[:city_id])
    @place = Place.friendly.find(params[:id])
  end

  def new
    @city = City.friendly.find(params[:city_id])
    @place = Place.new
  end

  def create
    @city = City.friendly.find(params[:city_id])
    @place = @city.places.build(place_params)

    if @place.save
      redirect_to city_place_path(@city, @place)
    else
      render 'new'
    end

  end

  private

    def place_params
      params.require(:place).permit(:title, :address, :latitude, :longitude)
    end

end