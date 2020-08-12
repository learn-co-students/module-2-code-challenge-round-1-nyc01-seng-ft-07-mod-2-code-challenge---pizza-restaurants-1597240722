class RestaurantPizza < ApplicationRecord
  belongs_to :pizza
  belongs_to :restaurant
  validates :price, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 30}
  validates :pizza ,uniqueness: {scope: :restaurant, message: "is already served at this restaurant"}
end
