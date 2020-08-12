class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  private 
  def pizza_params
    params.require(:pizza).permit(:name, :ingredients)
  end
  
end
