class Pizza < ApplicationRecord
    has_many :pizza_restaurants
    has_many :restaurants, through: :pizza_restaurants
end
