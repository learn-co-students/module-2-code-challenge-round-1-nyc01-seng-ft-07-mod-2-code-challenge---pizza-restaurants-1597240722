class RestaurantPizza < ApplicationRecord
  belongs_to :pizza
  belongs_to :restaurant
  validates :price, numericality: {greater_than: 0, less_than: 31} 
  validate :pizza_uniqueness

  def pizza_uniqueness
    if self.restaurant.pizzas.include?(self.pizza)
      errors.add(:sorry, "this restaurant already sells that pizza.")
    end
  end

end
