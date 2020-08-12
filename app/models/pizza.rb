class Pizza < ApplicationRecord
    has_many :branches
    has_many :restaurants, through: :branches
end
