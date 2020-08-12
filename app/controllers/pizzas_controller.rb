class PizzasController < ApplicationController
  before_action :find_pizza, only: [:show]
  
  def index
    @pizzas = Pizza.all
  end

  def show
  end


  private

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end
end
