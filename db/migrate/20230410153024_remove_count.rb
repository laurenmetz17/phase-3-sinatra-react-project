class RemoveCount < ActiveRecord::Migration[6.1]
  def change
    remove_column :shoes, :count
  end
end
