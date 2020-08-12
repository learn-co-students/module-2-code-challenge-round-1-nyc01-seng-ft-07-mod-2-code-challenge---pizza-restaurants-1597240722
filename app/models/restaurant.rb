class Restaurant < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :pizzas, through: :restaurant_pizzas

  def price_of_pizza(pizza)
    restaurant_pizzas.find do |p|
      pizza == p
    end
  end
end
