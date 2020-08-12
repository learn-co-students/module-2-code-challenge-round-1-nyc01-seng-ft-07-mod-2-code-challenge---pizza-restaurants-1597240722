class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant 
    belongs_to :pizza
    validates :price , numericality: {greater_than: 1 less_than_equal: 30}
end
