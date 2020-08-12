class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant
    belongs_to :pizza

    validates :price, numericality: {greater_than_or_equal_to: 1}
    validates :price, numericality: {less_than_or_equal_to: 30}
    validates :pizza, uniqueness: { scope: :restaurant,
    message: "That pizza already exists at location." }

    
end
