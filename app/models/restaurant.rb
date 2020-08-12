class Restaurant < ApplicationRecord
  has_many :pizza_restaurants
  has_many :pizzas, through: :pizza_restaurants
end
