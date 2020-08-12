class Pizza < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas

  def restaurant_count
    self.restaurant_pizzas.map.count do |item|
      item.restaurant_id
    end
  end
end
