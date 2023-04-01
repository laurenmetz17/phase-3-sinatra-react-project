class CreateShoes < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :style
      t.integer :price
      t.string :color
      t.integer :count
    end
  end
end
