class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    # raise
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end
end
