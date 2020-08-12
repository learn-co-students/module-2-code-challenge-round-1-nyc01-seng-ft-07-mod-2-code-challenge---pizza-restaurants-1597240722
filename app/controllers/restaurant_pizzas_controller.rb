class RestaurantPizzasController < ApplicationController

  def new
    @restaurant_pizza = RestaurantPizza.new
    @pizzas = Pizza.all
    @restaurants = Restaurant.all
  end

  def create
    @restaurant_pizza = RestaurantPizza.create(pr_params)
    @pizzas = Pizza.all
    @restaurants = Restaurant.all

    if @restaurant_pizza.valid?
      redirect_to restaurant_path(@restaurant_pizza.restaurant_id)
    else
      render :new
    end
  end

  private

  def pr_params
    params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
  end
end
