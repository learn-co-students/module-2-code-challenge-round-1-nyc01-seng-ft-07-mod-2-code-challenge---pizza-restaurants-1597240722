class RestaurantPizzasController < ApplicationController

    def index
     @restaurant_pizzas = RestaurantPizza.all
    end

    def show
    @restaurant_pizza =  RestaurantPizza.find(restaurant_pizza_params)
    end

    def new
        @restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        redirect_to restaurant_pizza_path(@restaurant_pizza)
    end

    private

    def restaurant_pizza_params
        params.require(:restaurant_pizza).permit(restaurant_id:,pizza_id:)
    end
end
