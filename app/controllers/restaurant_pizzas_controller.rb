class RestaurantPizzasController < ApplicationController

  def new
    @restaurantpizza = RestaurantPizza.new
  end

  def create
    @restaurantpizza = RestaurantPizza.create(rest_pizza_params)
    if @restaurantpizza.valid?
      redirect_to restaurant_path(@restaurantpizza.restaurant)
    else
      flash[:my_error] = @restaurantpizza.errors.full_messages
      redirect_to new_restaurant_pizza_path
    end
  end

  private

  def rest_pizza_params
    params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
  end


end
