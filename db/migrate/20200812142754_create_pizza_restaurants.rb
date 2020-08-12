class CreatePizzaRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :pizza_restaurants do |t|
      t.integer :price
      t.integer :restaurant_id
      t.integer :pizza_id

      t.timestamps
    end
  end
end
