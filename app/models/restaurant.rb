class Restaurant < ApplicationRecord
    has_many :branches
    has_many :pizzas, through: :branches
end
