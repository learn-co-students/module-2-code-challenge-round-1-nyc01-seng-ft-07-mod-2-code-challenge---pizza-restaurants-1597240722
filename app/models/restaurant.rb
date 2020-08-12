class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    def pizza_price(pizza)
        # passes pizza instance for argument
        self.restaurant_pizzas.find_by(pizza_id: pizza.id).price
    end

    def menu
        #if needed, iterate over self.pizzas and use pizza_price in block
    end

    def avg_price
        sum = 0
        self.restaurant_pizzas.each do |pizza|
            sum += pizza.price
        end
        sum / self.restaurant_pizzas.count
    end
end
