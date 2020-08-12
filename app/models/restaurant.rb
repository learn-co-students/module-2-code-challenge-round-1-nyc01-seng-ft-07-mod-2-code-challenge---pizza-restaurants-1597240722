class Restaurant < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :pizzas, through: :restaurant_pizzas

  def average
    assoc = RestaurantPizza.all.select{|rp| rp.restaurant == self}
    total = assoc.sum{|inst| inst.price}
    avg = total / assoc.count
    avg
  end
end
