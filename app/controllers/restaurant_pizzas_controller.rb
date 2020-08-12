class RestaurantPizzasController < ApplicationController

    def new
        @restaurant_pizza = RestaurantPizza.new
    end

    def create
        @restaurant_pizza = RestaurantPizza.create(param_settings)
        if @restaurant_pizza.valid?
            redirect_to restaurant_path(@restaurant_pizza.restaurant)
        else
            flash[:my_errors] = @restaurant_pizza.errors.full_messages
            redirect_to new_restaurant_pizza_path
        end
     end

    private

    def param_settings
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
end
