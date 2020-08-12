class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    def get_pizza_prices
        self.restaurant_pizzas.map do |pizza_r|
            pizza_r.price 
        end 
    end 

    def get_average_price
        self.get_pizza_prices.sum / self.get_pizza_prices.count
    end

end
