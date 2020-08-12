class PizzaRestaurant < ApplicationRecord
    # validation :price, numericality: {less_than: 30}
    belongs_to :pizza
    belongs_to :restaurant
end


# this would go on top of forms

# <% if @pizza_restaurant.errors.any? %>
# <% @pizza_restaurant.erros.ful_messages.each do |message| %>
# <%= message %>
# <br>