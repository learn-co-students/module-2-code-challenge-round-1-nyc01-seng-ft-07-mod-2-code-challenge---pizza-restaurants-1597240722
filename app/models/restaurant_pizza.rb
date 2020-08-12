class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza

  validates :price, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 30, message: "should be between 1 and 30."}
  validates :restaurant_id, uniqueness: { scope: :pizza_id, message: "already has this pizza on menu." }
end
