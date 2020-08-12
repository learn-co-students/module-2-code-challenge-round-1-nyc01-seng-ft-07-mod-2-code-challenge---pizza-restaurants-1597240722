class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza
  validates :price, numericality: {greater_than: 1, less_than: 30}

  validates :pizza, uniqueness: true

  # def avg_price
  #   RestaurantPizza.each do |price|
  #     price.
  #   end
  # end

end
