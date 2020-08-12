class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    def pizza_price
        self.restaurant_pizzas.map(&:price).compact.sum
    end

    def average_price
        self.pizza_price/(self.pizzas.count)
    end
    
end
