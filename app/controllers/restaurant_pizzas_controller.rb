class RestaurantPizzasController < ApplicationController
   
    def new
        @restaurant_pizza = RestaurantPizza.new
    end

    def create
        @restaurant_pizza = RestaurantPizza.create(restaurant_pizzas_params)
        if @restaurant_pizza.valid?
            redirect_to restaurant_pizza_path(restaurant_pizza.restaurant)
        else
            flash[:my_error] = @restaurant_pizza.errors.full_messages
            redirect_to new_restaurant_pizza_path
        end
    end

    private

    def restaurant_pizzas_params
        params.require(:restaurant_pizza).permit(:price, :pizza_id, :restaurant_id)
    end
   
end
