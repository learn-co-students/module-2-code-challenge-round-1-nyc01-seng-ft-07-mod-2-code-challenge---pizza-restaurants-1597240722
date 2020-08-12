class RestaurantPizzasController < ApplicationController

def new
    @restaurant_pizza = RestaurantPizza.new
end

def create
    @restaurant_pizza = RestuarantPizza.create(restaurant_pizza_params)
    redirect_to restaurant_path([@restaurant_pizza.restaurant.id]) 
end


private
def restaurant_pizza_params
    params.require(:restaurant).permit(:pizza_id, :restaurant_id, :price)
end


end