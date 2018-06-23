class Cities::CitiesController < ApplicationController


  def show
    @city = City.friendly.find(params[:id])
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      redirect_to city_path(@city)
    else
      render 'new'
    end
  end

  private

    def city_params
      params.require(:city).permit(:title, :latitude, :longitude)
    end

end