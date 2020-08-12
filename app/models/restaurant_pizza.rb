class RestaurantPizza < ApplicationRecord
    belongs_to :restautant 
    belongs_to :pizza
end 