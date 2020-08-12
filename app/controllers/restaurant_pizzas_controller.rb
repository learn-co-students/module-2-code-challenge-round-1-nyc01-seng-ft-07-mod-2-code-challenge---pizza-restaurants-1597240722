class RestaurantPizzasController < ApplicationController

    def index 
        @restaurant_pizzas = RestaurantPizza.all 
    end 

    def show 
        @restaurant_pizza = RestaurantPizza.find(params[:id])
    end 

    def new 
        @restaurant_pizza = RestaurantPizza.new 
    end 

    def create 
        @restaurant_pizza = RestaurantPizza.create(params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price))
        if @restaurant_pizza.valid?
        redirect_to restaurant_path(@restaurant_pizza.restaurant)
        else 
            flash[:errors]= @restaurant_pizza.errors.full_messages 
            redirect_to new_restaurant_pizza_path   
        end
    end 

private 
 
# def restaurant_pizza_params
#     params.require(:RestaurantPizza).permit(:restaurant_id, :pizza_id, :price)
# end 

end
