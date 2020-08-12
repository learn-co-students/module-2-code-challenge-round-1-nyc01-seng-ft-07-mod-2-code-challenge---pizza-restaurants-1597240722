class RestaurantPizzasController < ApplicationController
    before_action :find_restaurant_pizza, only: [:show]
    
    def new
        @restaurant_pizza = RestaurantPizza.new
    end

    def show
    end

    def create
        @restaurant_pizza = RestaurantPizza.create(strong_params)

        if @restaurant_pizza.valid?
            redirect_to restaurant_path(@restaurant_pizza.restaurant)
        else
            flash[:my_errors] = @restaurant_pizza.errors.full_messages
            render :new
        end
    end

    private

    def find_restaurant_pizza
        @restaurant_pizza = RestaurantPizza.find(params[:id])
    end

    def strong_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
end
