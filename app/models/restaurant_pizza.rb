class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza
  validates :price, inclusion: {in: 1..30}
  validate :associate_once 
  
  def associate_once
    if RestaurantPizza.all.find_all{|rp|(rp.pizza_id == self.pizza_id) && (rp.restaurant_id == self.restaurant_id)}.count > 1
      errors.add(:pizza, "already exists in this Restaurant")
    end
  end
end
