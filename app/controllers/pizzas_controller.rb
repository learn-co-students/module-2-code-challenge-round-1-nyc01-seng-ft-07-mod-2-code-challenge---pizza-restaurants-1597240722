class PizzasController < ApplicationController

  def show 
    @pizza = Pizza.find(params[:id])
  end

  
  def index
    @pizzas = Pizza.all
  end

end
