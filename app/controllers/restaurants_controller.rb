class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant_pizzas = RestaurantPizza.all 
  end
end
