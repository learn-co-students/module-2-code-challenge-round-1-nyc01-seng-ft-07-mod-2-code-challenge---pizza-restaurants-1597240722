class Restaurant < ApplicationRecord
    has_many :restaurantpizzas
    has_many :restaurants, through: :restaurantPizzas
end
