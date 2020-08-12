class RestaurantPizzasController < ApplicationController

    def new
        @restaurant_pizza = RestaurantPizza.new
    end
    def create
        @restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        redirect_to restaurant_path(@restaurant_pizza.restaurant)
    end
    private
    def restaurant_pizza_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
end
