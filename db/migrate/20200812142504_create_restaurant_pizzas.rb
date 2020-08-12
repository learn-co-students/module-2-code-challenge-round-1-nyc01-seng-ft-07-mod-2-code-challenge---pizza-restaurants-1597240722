class CreateRestaurantPizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_pizzas do |t|
      t.belongs_to :pizza, foreign_key: true
      t.belongs_to :restaurant, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
