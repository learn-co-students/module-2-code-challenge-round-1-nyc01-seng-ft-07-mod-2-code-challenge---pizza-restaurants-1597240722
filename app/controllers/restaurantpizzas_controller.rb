class RestaurantpizzasController < ApplicationController

def new
    @restaurantpizzas = Restaurantpizza.new
end

def create
    @restaurantpizza - Restaurantpizza.create(params[:id])
end






end
