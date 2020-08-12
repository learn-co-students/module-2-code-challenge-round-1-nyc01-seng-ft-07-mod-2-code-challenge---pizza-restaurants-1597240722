class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas
  
    def average_price
        if self.pizzas.size >=1
            RestaurantPizza.all.map{|restpizza| restpizza.price if restpizza.restaurant == self}.sum / self.pizzas.size
        else
            "0"
        end
    end



end
