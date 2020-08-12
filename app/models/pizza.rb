class Pizza < ApplicationRecord
    has_many :restaurantpizzas
    has_many :restaurants, through: :restaurants
end
