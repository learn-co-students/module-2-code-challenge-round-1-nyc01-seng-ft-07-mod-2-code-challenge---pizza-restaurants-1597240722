class PizzaRestaurantsController < ApplicationController
    def new
        @pizza_restaurant = PizzaRestaurant.new
        @pizzas = Pizza.all
        @restaurants = Restaurant.all
    end

    def create
        @pizza_restaurant = PizzaRestaurant.create(pizza_restaurant_params)
        if @pizza_restaurant.valid?
            redirect_to restaurant_path(@pizza_restaurant.restaurant)
        else
            flash[:errors] = @pizza_restaurant.errors.full_messages
            redirect_to new_pizza_restaurant_path(@pizza_restaurant)
        end
    end

    private

    def pizza_restaurant_params
        params.require(:pizza_restaurant).permit(:price, :restaurant_id, :pizza_id)
    end
end
