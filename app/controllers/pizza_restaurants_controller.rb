class PizzaRestaurantsController < ApplicationController
    def new
        @pizza_restaurant = PizzaRestaurant.new
    end

    def create
        @pizza_restaurant = PizzaRestaurant.create(pizza_restaurant_params)

        redirect_to restaurant_path(@pizza_restaurant)
    end

     # def create
    #     @pizza_restaurant = PizzaRestaurant.create(pizza_restaurant_params)
    #     if artist.valid?
    #     redirect_to restaurant_path(@pizza_restaurant)
    #     else
    #         render :new
    #     end
    # end

    private
  def pizza_restaurant_params
    params.require(:pizza_restaurant).permit(:price, :pizza_id, :restaurant_id)
  end
end
