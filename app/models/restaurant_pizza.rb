class RestaurantPizza < ApplicationRecord
  belongs_to :pizza
  belongs_to :restaurant

  validates :price, inclusion: { in: 1..30, 
    message: "needs to be between $1 and $30." }
    validates :pizza_id, uniqueness: { scope: :restaurant_id,
    message: "is already on the menu!" }
end
