class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    def average_pizza_price
        total = self.restaurant_pizzas.sum do |pizza|
            pizza.price
        end
        ( total / self.pizzas.count ).to_i
    end
end
