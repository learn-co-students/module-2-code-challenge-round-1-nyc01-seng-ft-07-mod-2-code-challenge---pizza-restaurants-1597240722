class PizzasController < ApplicationController
  before_action :find_pizza, only: [:show]
  def index
    @pizzas = Pizza.all
  end
  
  def new
    @pizza = Pizza.new
  end
  
  def show
    
  end
  
  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.valid?
    @pizza.save
    redirect_to pizza_path(@pizza)
    else
    flash[:my_errors] = @pizza.errors.full_messages
    redirect_to new_pizza_path
    end
  end
  
  # def edit
    
  # end
  
  # def update
    
  #   @pizza.update(pizza_params)
  #   redirect_to pizza_path(@pizza)
  # end
  
  # def delete
    
  #   @pizza.destroy
  
  #   redirect_to pizzas_path
  # end
  
  private
    
  def find_pizza
    @pizza = Pizza.find(params[:id])
  end
  
  def pizza_params
    params.require(:pizza).permit(:name, :ingredients)
  end
  
  
end
