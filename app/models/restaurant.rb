class Restaurant < ApplicationRecord
  has_many :pizza_restaurants
  has_many :pizzas, through: :pizza_restaurants

  def average_pizza_price
    self.pizza_restaurants.map{|pr| pr.price}.sum / self.pizzas.count.to_f
  end
end
