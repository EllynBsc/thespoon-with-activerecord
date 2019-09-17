class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit]
  def index
    @restaurants = Restaurant.all
  end

  def show
    # raise
    # @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    redirect_to restaurants_path
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # raise (create is the same as new +save)
    # raise
    # restaurant = Restaurant.create(name: params[:name],address: params[:address], stars: params[:stars])
    # restaurant = Restaurant.create(params[:restaurant])
    restaurant = Restaurant.create(restaurant_strong_params)
    redirect_to restaurant_path(restaurant)
  end

  def edit
    # raise
    # @restaurant = Restaurant.find(params[:id])
  end

  def update
    # raise
    restaurant = Restaurant.find(params[:id])
    restaurant.update(restaurant_strong_params)
    redirect_to restaurant_path(restaurant)
  end


  private

  def restaurant_strong_params
    params.require(:restaurant).permit(:name, :address, :stars, :admin)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
