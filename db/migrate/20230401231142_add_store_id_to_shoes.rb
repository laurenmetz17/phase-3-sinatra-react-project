class AddStoreIdToShoes < ActiveRecord::Migration[6.1]
  def change
    add_column :shoes, :shoe_store_id, :integer
  end
end
