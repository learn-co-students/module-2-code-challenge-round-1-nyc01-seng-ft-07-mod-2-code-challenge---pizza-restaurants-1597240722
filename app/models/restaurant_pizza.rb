class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza
  validates :price, numericality: {greater_than: 1, less_than: 30}

  validates :pizza, uniqueness: true

  # def prices
  #   total_price = RestaurantPizza.each do |price|
  #     price.
  # end

  # def avg_price
  #   total_price
  #   end
  # end

end
