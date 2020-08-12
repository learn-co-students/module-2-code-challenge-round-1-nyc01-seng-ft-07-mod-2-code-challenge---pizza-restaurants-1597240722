class RestaurantPizza < ApplicationRecord
    belongs_to :pizza 
    belongs_to :restaurant

validates :price, numericality: {less_than_or_equal_to: 30, message: 'Price must be $30 or less, try again'}
validates :pizza_id, uniqueness: true

end
