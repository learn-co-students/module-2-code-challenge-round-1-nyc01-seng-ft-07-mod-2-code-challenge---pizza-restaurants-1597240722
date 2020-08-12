class RestaurantPizzasController < ApplicationController
  def new
    @restaurant_pizza = RestaurantPizza.new
  end
  
  def create
    @restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)

    if @restaurant_pizza.save
      redirect_to restaurant_path(@restaurant_pizza.restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_pizza_params
    params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
  end
end
