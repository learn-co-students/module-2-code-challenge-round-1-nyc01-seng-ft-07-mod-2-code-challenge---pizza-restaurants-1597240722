class Restaurant < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :pizzas, through: :restaurant_pizzas

  def average_pizza_price
    restaurant_pizzas.inject(0) { |sum, el| sum + el.price }.to_f / restaurant_pizzas.count
  end
end
