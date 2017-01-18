class BeersController < ApplicationController
  def index
    @beer = Beer.new
    @beers = Beer.all
  end

  def create
    Beer.create(beer_params)
    redirect_to root_path
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :brewery, :style)
  end

end
