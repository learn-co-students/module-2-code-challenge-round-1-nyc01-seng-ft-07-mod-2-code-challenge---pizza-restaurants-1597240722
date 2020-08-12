class CreateBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :branches do |t|
      t.integer :price
      t.integer :pizza_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
