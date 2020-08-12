class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas


    def restaurant_count
        self.restaurants.count
    end

    def pizza_average_price
        total_price = 0
        average = 0
        self.restaurant_pizzas.each {|rp| total_price += rp.price}
        average = total_price / self.restaurant_pizzas.count
    end
end
