class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # def average
  #   assoc = RestaurantPizza.all.select{|RP| RP.restaurant == self}
  #   total = assoc.sum{|inst| inst.price}
  #   avg = total / assoc.count
  #   avg
  # end
end
