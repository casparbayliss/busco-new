class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.text :description
      t.float :weight

      t.timestamps
    end
  end
end
