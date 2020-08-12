class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    def average_price
        total = self.restaurant_pizzas.inject(0.0) {|sum, p| sum + p.price}
        total / self.restaurant_pizzas.all.count
    end

    def find_restaurant_pizza(pizza)
        restaurant_pizza = RestaurantPizza.find_by(pizza: pizza, restaurant: self)
    end
end

