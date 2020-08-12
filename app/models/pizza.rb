class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas

    def offering_count
        self.restaurants.count
    end

end