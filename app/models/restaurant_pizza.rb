class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant
    belongs_to :pizza

    # validates :pizza, :restaurant
    validate :record_uniqueness

    def record_uniqueness
        similar = RestaurantPizza.joins(:restaurant).exists?
          #.exists?('restaurant.id = ? AND pizza.id = ?', restaurant, pizza)
    
        errors.add(:restaurant, "Restaurant has this item for sale already") if similar
        # You can add the error to :order_item_id too
      end
end
