class CreateShoeStores < ActiveRecord::Migration[6.1]
  def change
      create_table :shoe_stores do |t|
        t.string :name
        t.string :address
        t.timestamps
        t.integer :total_inventory
      end
  end
end
