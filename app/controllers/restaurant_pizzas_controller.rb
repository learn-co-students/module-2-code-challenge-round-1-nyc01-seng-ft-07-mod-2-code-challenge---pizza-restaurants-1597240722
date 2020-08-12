class RestaurantPizzasController < ApplicationController

    def new 
        @restaurant_pizza = RestaurantPizza.new
        @restaurants = Restaurant.all 
        @pizzas =Pizza.all 
    end

    def create
        restaurant_pizza = RestaurantPizza.create(params_path(:price, :restaurant_id, :pizza_id))

        if restaurant_pizza.valid?
            redirect_to restaurant_path (restaurant_pizza.restaurant)
        else
            flash[:errors] =restaurant_pizza.errors
            redirect_to new_restaurant_pizza_path
        end
    end

    private
    def params_path(*args)
        params.require(:restaurant_pizza).permit(*args)
    end
end
