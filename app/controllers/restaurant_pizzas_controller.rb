class RestaurantPizzasController < ApplicationController

def new
    @restaurant_pizza= RestaurantPizza.new
end

def create 
    @restaurant_pizza= RestaurantPizza.create(restaurant_pizza_params)
    #redirect_to restaurant_path(restaurant_pizza.restaurant)
    if @restaurant_pizza.valid?

     redirect_to restaurant_path(restaurant_pizza.restaurant.id)
    
        
    else
        flash[:the_errors]= @restaurant.errors.full_messages
        redirect_to new_restaurant_pizza_path
        
        
    end


end 

#got synthax errors buut was running out of time 


private 

def restaurant_pizza_params
    params.require(:restaurant_pizzas).permit(:restaurant_id, :pizza_id, :price)


end 










end
