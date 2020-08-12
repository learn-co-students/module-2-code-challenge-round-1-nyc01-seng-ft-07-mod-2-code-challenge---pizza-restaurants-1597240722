class RestaurantPizzasController < ApplicationController
    
    def new
        @restaurant_pizza = RestaurantPizza.new
    end
  
    def create
        @restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
            if @restaurant_pizza.valid?
                redirect_to restaurant_path(@restaurant_pizza.restaurant.id)
            else
                flash[:errors] = @restaurant_pizza.errors.full_messages
                redirect_to new_restaurant_pizza_path(@restuarant_pizza)
            end
    end

    private
    def restaurant_pizza_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
  
end
