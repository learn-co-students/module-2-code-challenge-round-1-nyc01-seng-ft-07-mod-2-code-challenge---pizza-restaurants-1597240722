class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas
  
    def avg_price
        prices = []
        self.restaurant_pizzas.each do |restpizza|
            prices << restpizza.price
        end
        prices.sum / prices.count
    end
end
