class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizza
    validates :price, numericality: {greater_than: 1, less_than: 30}
    validates :pizza, uniqueness: true
end
