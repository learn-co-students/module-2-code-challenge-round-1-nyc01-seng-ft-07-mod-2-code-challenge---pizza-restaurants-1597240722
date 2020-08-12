class RestaurantPizzasController < ApplicationController
    before_action :find_restaurant_pizza, only: [:show]
    def index
        @restaurant_pizzas = RestaurantPizza.all
    end
    
    def new
        @restaurant_pizza = RestaurantPizza.new
        @pizzas = Pizza.all # for some reason I cannot access these variabels in my new views
        @restaurants = Restaurant.all
    end
    
    def show
        
    end
    
    def create
        @restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        if @restaurant_pizza.valid?
        redirect_to restaurant_path(@restaurant_pizza.restaurant)
        else
        flash[:my_errors] = @restaurant_pizza.errors.full_messages
        redirect_to new_restaurant_pizza_path
        end
    end
    
    # def edit
        
    # end
    
    # def update
        
    #     @restaurant_pizza.update(restaurant_pizza_params)
    #     redirect_to restaurant_pizza_path(@restaurant_pizza)
    # end
    
    # def delete
        
    #     @restaurant_pizza.destroy
    
    #     redirect_to restaurant_pizzas_path
    # end
    
    private
        
    def find_restaurant_pizza
        @restaurant_pizza = RestaurantPizza.find(params[:id])
    end
    
    def restaurant_pizza_params
        params.require(:restaurant_pizza).permit(:pizza_id, :restaurant_id, :price)
    end
    
    
end
