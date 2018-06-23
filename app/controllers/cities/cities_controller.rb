class Cities::CitiesController < ApplicationController


  def show
    @city = City.friendly.find(params[:id])
  end

  def new
    @city = City.new
  end

  def create
  end

end