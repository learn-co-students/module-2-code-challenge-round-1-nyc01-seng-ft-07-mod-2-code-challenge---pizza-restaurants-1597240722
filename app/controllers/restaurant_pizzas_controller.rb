class RestaurantPizzasController < ApplicationController
    def new
        @restaurantpizza = RestaurantPizza.new
    end

    def create
        @restaurantpizza.valid? = RestaurantPizza.create(rest_pizza_params)
        redirect_to restaurant_path(restaurantPizza.restaurant_id)
    else
        flash[:my_error] = @post.errors.full_messages
        redirect_to new_restaurant_pizza_path
    end
end


private
    def rest_pizza_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end

end

#had soo many tech issues, have mercy on my soul ):