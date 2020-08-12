class Restaurant < ApplicationRecord
  has_many :restaurant_pizzas, :dependent => :destroy
  has_many :pizzas, through: :restaurant_pizzas

  def average_pizza_price
    prices = self.restaurant_pizzas.map {|rp| rp.price}
    (prices.sum)/(prices.count)
  end

end
