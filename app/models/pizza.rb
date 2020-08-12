class Pizza < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas

  def num_of_restaurant
    restaurants.count
  end
end
