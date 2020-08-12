class RestaurantPizzasController < ApplicationController

    def new
        @restpizza = RestaurantPizza.new
        @restaurants = Restaurant.all
        @pizzas = Pizza.all
    end

    def create
        @restpizza = RestaurantPizza.create(restpizza_params)

        if @restpizza.valid?
            redirect_to restaurant_path(@restpizza.restaurant.id)
        else
            flash[:my_errors] = @restpizza.errors.full_messages
            redirect_to new_restaurant_pizza_path
        end
    end


    private

    def restpizza_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
end
