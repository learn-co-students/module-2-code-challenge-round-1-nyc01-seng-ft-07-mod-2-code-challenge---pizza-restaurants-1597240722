class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @average_pizza_price = @restaurant.pizzas.average(:price).round(2)
  end
end
