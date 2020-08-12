class AddPriceToRestaurantpizzas < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurantpizzas, :price, :integer
  end
end
