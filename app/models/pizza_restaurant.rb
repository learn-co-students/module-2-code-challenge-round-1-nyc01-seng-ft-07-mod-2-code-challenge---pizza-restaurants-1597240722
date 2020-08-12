class PizzaRestaurant < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant
    validates :price, inclusion: 1..30
    validates :pizza, uniqueness: { scope: :restaurant }
end
