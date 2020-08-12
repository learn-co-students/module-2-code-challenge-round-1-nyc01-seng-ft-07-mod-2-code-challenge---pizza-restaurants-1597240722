class RestaurantPizzasController < ApplicationController

  def new
    @restaurant_pizza = RestaurantPizza.new
    @restaurants = Restaurant.all 
    @pizzas = Pizza.all
  end

  def create
    @restaurant_pizza = RestaurantPizza.new(rp_params)
    if @restaurant_pizza.valid?
      @restaurant_pizza.save
      redirect_to restaurant_path(@restaurant_pizza.restaurant.id)
    else
      flash[:my_errors] = @restaurant_pizza.errors.full_messages
      redirect_to new_restaurant_pizza_path
    end


  end


  private

  def rp_params
    params.require(:restaurant_pizza).permit!
  end

end