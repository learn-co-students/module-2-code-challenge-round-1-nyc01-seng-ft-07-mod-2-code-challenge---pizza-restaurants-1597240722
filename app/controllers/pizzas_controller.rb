class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
    render template: "pizzas/index.html.erb", layout: "application"
  end
end
