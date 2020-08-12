class AddColumnToRestaurantPizza < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurant_pizzas, :price, :integer
  end
end
