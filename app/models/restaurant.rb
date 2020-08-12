class Restaurant < ApplicationRecord
  has_many :restaurant_pizza
  has_many :pizzas, through: :restaurant_pizza
end
