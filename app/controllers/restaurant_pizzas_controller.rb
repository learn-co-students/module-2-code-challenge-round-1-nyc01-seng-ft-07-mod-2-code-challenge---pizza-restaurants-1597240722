class RestaurantPizzasController < ApplicationController
    def new
        @restaurant_pizza = RestaurantPizza.new
        @pizzas = Pizza.all 
        @restaurants = Restaurant.all
      end
    
      def create
        @restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params) 
        if @restaurant_pizza.valid?
            redirect_to restaurant_path(@restaurant_pizza.restaurant.id) 
        else 
            flash[:my_errors] = @restaurant_pizza.errors.full_messages
            redirect_to new_restaurant_pizza_path 
        end 
      end
    
      private
    
      def restaurant_pizza_params
        params.require(:restaurant_pizza).permit(:pizza_id, :restaurant_id, :price)
      end
end
