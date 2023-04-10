class RemoveTotalInventory < ActiveRecord::Migration[6.1]
  def change
    remove_column :shoe_stores, :total_inventory
  end
end
