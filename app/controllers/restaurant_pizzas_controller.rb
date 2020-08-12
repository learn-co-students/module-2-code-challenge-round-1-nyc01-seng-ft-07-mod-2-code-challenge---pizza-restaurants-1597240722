class RestaurantPizzasController < ApplicationController
    def index

    end 
    
    def new
        @restaurant_pizza = RestaurantPizza.new
    end 

    def create
        @restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        if @restaurant_pizza.valid?
            redirect_to restaurant_path(restaurant_pizza_params[:restaurant_id])
        else
            render 'new'
        end
    end

    private

    def restaurant_pizza_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
end
